"""
Observable Framework Python data loader.
Filename: sleep-trend.csv.py
Expected input folder: project-root/yrbs-data/
Place this file in: project-root/src/data/

This loader reads the CDC national YRBS fixed-width data files and writes
a CSV summary to stdout for Observable Framework.

Coding used for the derived CDC binary sleep variables:
1 = Yes (got 8 or more hours of sleep)
2 = No
blank = missing / excluded

The positions below are 1-based SAS column positions taken from the
matching CDC SAS Input Programs. WEIGHT is read as a 10-character field.
"""

from pathlib import Path
import csv
import sys

ROOT = Path(__file__).resolve().parents[2]
DATA_DIR = ROOT / "yrbs-data"

SPECS = {
    2015: {"file": "yrbs2015.dat", "sleep_var": "QN88", "sleep_pos": 265, "weight_pos": 390, "stratum_pos": 400, "psu_pos": 403},
    2017: {"file": "XXH2017_YRBS_Data.dat", "sleep_var": "QN88", "sleep_pos": 265, "weight_pos": 387, "stratum_pos": 397, "psu_pos": 400},
    2019: {"file": "XXH2019_YRBS_Data.dat", "sleep_var": "QN88", "sleep_pos": 265, "weight_pos": 386, "stratum_pos": 396, "psu_pos": 399},
    2021: {"file": "XXH2021_YRBS_Data.dat", "sleep_var": "QN86", "sleep_pos": 263, "weight_pos": 390, "stratum_pos": 400, "psu_pos": 403},
    2023: {"file": "XXH2023_YRBS_Data.dat", "sleep_var": "QN85", "sleep_pos": 262, "weight_pos": 388, "stratum_pos": 398, "psu_pos": 401},
    2025: {"file": "XXH2025_YRBS_Data.dat", "sleep_var": "QN83", "sleep_pos": 261, "weight_pos": 389, "stratum_pos": 399, "psu_pos": 402},
}

FIELDS = [
    "year", "weighted_pct_8plus", "weighted_pct_under8",
    "valid_unweighted_n", "sleep_variable", "measure",
    "weight_variable", "stratum_variable", "psu_variable",
    "calculation_note"
]

writer = csv.DictWriter(sys.stdout, fieldnames=FIELDS)
writer.writeheader()

for year, spec in SPECS.items():
    path = DATA_DIR / spec["file"]
    if not path.exists():
        raise FileNotFoundError(f"Missing CDC data file: {path}")

    weighted_yes = 0.0
    weighted_valid = 0.0
    valid_n = 0

    with path.open("rb") as source:
        for record in source:
            sleep_code = record[spec["sleep_pos"] - 1:spec["sleep_pos"]].decode("latin1").strip()
            weight_text = record[spec["weight_pos"] - 1:spec["weight_pos"] + 9].decode("latin1").strip()

            if sleep_code not in ("1", "2") or not weight_text:
                continue

            try:
                weight = float(weight_text)
            except ValueError:
                continue

            if weight <= 0:
                continue

            weighted_valid += weight
            if sleep_code == "1":
                weighted_yes += weight
            valid_n += 1

    if weighted_valid == 0:
        raise ValueError(f"No valid weighted sleep responses found for {year}")

    pct_yes = 100 * weighted_yes / weighted_valid

    writer.writerow({
        "year": year,
        "weighted_pct_8plus": f"{pct_yes:.2f}",
        "weighted_pct_under8": f"{100-pct_yes:.2f}",
        "valid_unweighted_n": valid_n,
        "sleep_variable": spec["sleep_var"],
        "measure": "Got 8 or more hours of sleep",
        "weight_variable": "WEIGHT",
        "stratum_variable": "STRATUM",
        "psu_variable": "PSU",
        "calculation_note": "Weighted percentage among valid yes/no responses; excludes blank sleep responses"
    })
