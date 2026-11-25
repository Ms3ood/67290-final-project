/****************************************************************************************/
/*  This SAS program reads ASCII format (text format) 2015 YRBS data and creates a      */
/*  formatted and labeled SAS dataset.                                                  */
/*                                                                                      */
/*  Change the file location specifications from 'c:\YRBS2015' to the location where    */
/*  you have stored the YRBS ASCII data file and the format library before you run this */
/*  program.  Change the location specification in three places - in the 'filename'     */
/*  statement and in the two 'libname' statements at the top of the program.            */
/*                                                                                      */
/*  Note: Run '2015XXH Formats Program.sas' BEFORE you run                              */
/*  '2015XXH SAS Input Program.sas' to create the 2015YRBS dataset.                    */
/****************************************************************************************/
 
filename datain 'c:\yrbs2015\yrbs2015.dat';
libname dataout 'c:\yrbs2015';
libname library 'c:\yrbs2015';
data dataout.yrbs2015 ;
infile datain lrecl=500;
Input
@17 Q1 $1.
@18 Q2 $1.
@19 Q3 $1.
@20 Q4 $1.
@21 Q5 $8.
@29 Q6 4.2
@33 Q7 6.2
@39 Q8 $1.
@40 Q9 $1.
@41 Q10 $1.
@42 Q11 $1.
@43 Q12 $1.
@44 Q13 $1.
@45 Q14 $1.
@46 Q15 $1.
@47 Q16 $1.
@48 Q17 $1.
@49 Q18 $1.
@50 Q19 $1.
@51 Q20 $1.
@52 Q21 $1.
@53 Q22 $1.
@54 Q23 $1.
@55 Q24 $1.
@56 Q25 $1.
@57 Q26 $1.
@58 Q27 $1.
@59 Q28 $1.
@60 Q29 $1.
@61 Q30 $1.
@62 Q31 $1.
@63 Q32 $1.
@64 Q33 $1.
@65 Q34 $1.
@66 Q35 $1.
@67 Q36 $1.
@68 Q37 $1.
@69 Q38 $1.
@70 Q39 $1.
@71 Q40 $1.
@72 Q41 $1.
@73 Q42 $1.
@74 Q43 $1.
@75 Q44 $1.
@76 Q45 $1.
@77 Q46 $1.
@78 Q47 $1.
@79 Q48 $1.
@80 Q49 $1.
@81 Q50 $1.
@82 Q51 $1.
@83 Q52 $1.
@84 Q53 $1.
@85 Q54 $1.
@86 Q55 $1.
@87 Q56 $1.
@88 Q57 $1.
@89 Q58 $1.
@90 Q59 $1.
@91 Q60 $1.
@92 Q61 $1.
@93 Q62 $1.
@94 Q63 $1.
@95 Q64 $1.
@96 Q65 $1.
@97 Q66 $1.
@98 Q67 $1.
@99 Q68 $1.
@100 Q69 $1.
@101 Q70 $1.
@102 Q71 $1.
@103 Q72 $1.
@104 Q73 $1.
@105 Q74 $1.
@106 Q75 $1.
@107 Q76 $1.
@108 Q77 $1.
@109 Q78 $1.
@110 Q79 $1.
@111 Q80 $1.
@112 Q81 $1.
@113 Q82 $1.
@114 Q83 $1.
@115 Q84 $1.
@116 Q85 $1.
@117 Q86 $1.
@118 Q87 $1.
@119 Q88 $1.
@120 Q89 $1.
@121 Q90 $1.
@122 Q91 $1.
@123 Q92 $1.
@124 Q93 $1.
@125 Q94 $1.
@126 Q95 $1.
@127 Q96 $1.
@128 Q97 $1.
@129 Q98 $1.
@130 Q99 $1.
@185 QN8 1.
@186 QN9 1.
@187 QN10 1.
@188 QN11 1.
@189 QN12 1.
@190 QN13 1.
@191 QN14 1.
@192 QN15 1.
@193 QN16 1.
@194 QN17 1.
@195 QN18 1.
@196 QN19 1.
@197 QN20 1.
@198 QN21 1.
@199 QN22 1.
@200 QN23 1.
@201 QN24 1.
@202 QN25 1.
@203 QN26 1.
@204 QN27 1.
@205 QN28 1.
@206 QN29 1.
@207 QN30 1.
@208 QN31 1.
@209 QN32 1.
@210 QN33 1.
@211 QN34 1.
@212 QN35 1.
@213 QN36 1.
@214 QN37 1.
@215 QN38 1.
@216 QN39 1.
@217 QN40 1.
@218 QN41 1.
@219 QN42 1.
@220 QN43 1.
@221 QN44 1.
@222 QN45 1.
@223 QN46 1.
@224 QN47 1.
@225 QN48 1.
@226 QN49 1.
@227 QN50 1.
@228 QN51 1.
@229 QN52 1.
@230 QN53 1.
@231 QN54 1.
@232 QN55 1.
@233 QN56 1.
@234 QN57 1.
@235 QN58 1.
@236 QN59 1.
@237 QN60 1.
@238 QN61 1.
@239 QN62 1.
@240 QN63 1.
@241 QN64 1.
@242 QN65 1.
@243 QN66 1.
@244 QN67 1.
@245 QN68 1.
@246 QN69 1.
@247 QN70 1.
@248 QN71 1.
@249 QN72 1.
@250 QN73 1.
@251 QN74 1.
@252 QN75 1.
@253 QN76 1.
@254 QN77 1.
@255 QN78 1.
@256 QN79 1.
@257 QN80 1.
@258 QN81 1.
@259 QN82 1.
@260 QN83 1.
@261 QN84 1.
@262 QN85 1.
@263 QN86 1.
@264 QN87 1.
@265 QN88 1.
@266 QN89 1.
@267 QN90 1.
@268 QN91 1.
@269 QN92 1.
@270 QN93 1.
@271 QN94 1.
@272 QN95 1.
@273 QN96 1.
@274 QN97 1.
@275 QN98 1.
@276 QN99 1.
@1 SITE $3.
@350 QNFRCIG 1.
@351 QNDAYCIG 1.
@352 QNCIGINT 1.
@353 QNTOB4 1.
@354 QNTOB3 1.
@355 QNTOB2 1.
@356 QNNOTOB4 1.
@357 QNNOTOB3 1.
@358 QNNOTOB2 1.
@359 QNIUDIMP 1.
@360 QNSHPARG 1.
@361 QNOTHHPL 1.
@362 QNDUALBC 1.
@363 QNBCNONE 1.
@364 QNFR0 1.
@365 QNFR1 1.
@366 QNFR2 1.
@367 QNFR3 1.
@368 QNVEG0 1.
@369 QNVEG1 1.
@370 QNVEG2 1.
@371 QNVEG3 1.
@372 QNSODA1 1.
@373 QNSODA2 1.
@374 QNSODA3 1.
@375 QNMILK1 1.
@376 QNMILK2 1.
@377 QNMILK3 1.
@378 QNBK7DAY 1.
@379 QNPA0DAY 1.
@380 QNPA7DAY 1.
@381 QNDLYPE 1.
@382 QNSPDRK1 1.
@383 QNSPDRK2 1.
@384 QNSPDRK3 1.
@385 QNWATER1 1.
@386 QNWATER2 1.
@387 QNWATER3 1.
@388 QNOBESE 1.
@389 QNOWT 1.
@390 WEIGHT 10.4
@400 STRATUM 3.
@403 PSU 6.
@409 BMIPCT 5.2
@414 RACEETH $2.
@416 Q6ORIG $3.
@419 Q7ORIG $3.
;

/****************************************/
/*   Assign formats to SAS variables    */
/****************************************/
 
format
Q1 $H1S. Q2 $H2S. Q3 $H3S. Q4 $H4S. Q5 $char8. 
Q6 4.2 Q7 6.2 Q8 $H8S. Q9 $H9S. Q10 $H10S. 
Q11 $H11S. Q12 $H12S. Q13 $H13S. Q14 $H14S. Q15 $H15S. 
Q16 $H16S. Q17 $H17S. Q18 $H18S. Q19 $H19S. Q20 $H20S. 
Q21 $H21S. Q22 $H22S. Q23 $H23S. Q24 $H24S. Q25 $H25S. 
Q26 $H26S. Q27 $H27S. Q28 $H28S. Q29 $H29S. Q30 $H30S. 
Q31 $H31S. Q32 $H32S. Q33 $H33S. Q34 $H34S. Q35 $H35S. 
Q36 $H36S. Q37 $H37S. Q38 $H38S. Q39 $H39S. Q40 $H40S. 
Q41 $H41S. Q42 $H42S. Q43 $H43S. Q44 $H44S. Q45 $H45S. 
Q46 $H46S. Q47 $H47S. Q48 $H48S. Q49 $H49S. Q50 $H50S. 
Q51 $H51S. Q52 $H52S. Q53 $H53S. Q54 $H54S. Q55 $H55S. 
Q56 $H56S. Q57 $H57S. Q58 $H58S. Q59 $H59S. Q60 $H60S. 
Q61 $H61S. Q62 $H62S. Q63 $H63S. Q64 $H64S. Q65 $H65S. 
Q66 $H66S. Q67 $H67S. Q68 $H68S. Q69 $H69S. Q70 $H70S. 
Q71 $H71S. Q72 $H72S. Q73 $H73S. Q74 $H74S. Q75 $H75S. 
Q76 $H76S. Q77 $H77S. Q78 $H78S. Q79 $H79S. Q80 $H80S. 
Q81 $H81S. Q82 $H82S. Q83 $H83S. Q84 $H84S. Q85 $H85S. 
Q86 $H86S. Q87 $H87S. Q88 $H88S. Q89 $H89S. Q90 $H90XX. 
Q91 $H91XX. Q92 $H92XX. Q93 $H93XX. Q94 $H94XX. Q95 $H95XX. 
Q96 $H96XX. Q97 $H97XX. Q98 $H98XX. Q99 $H99XX. 
raceeth $HRCE.
;

/****************************************/
/*   Assign labels to SAS variables     */
/****************************************/
 
label
Q1="How old are you"
Q2="What is your sex"
Q3="In what grade are you"
Q4="Are you Hispanic/Latino"
Q5="What is your race"
Q6="How tall are you"
Q7="How much do you weigh"
Q8="Bicycle helmet use"
Q9="Seat belt use"
Q10="Riding with a drinking driver"
Q11="Drinking and driving"
Q12="Texting and driving"
Q13="Weapon carrying"
Q14="Gun carrying"
Q15="Weapon carrying at school"
Q16="Safety concerns at school"
Q17="Threatened at school"
Q18="Physical fighting"
Q19="Injurious physical fighting"
Q20="Physical fighting at school"
Q21="Forced sexual intercourse"
Q22="Physical dating violence"
Q23="Sexual dating violence"
Q24="Bullying at school"
Q25="Electronic bullying"
Q26="Sad or hopeless"
Q27="Considered suicide"
Q28="Made a suicide plan"
Q29="Attempted suicide"
Q30="Injurious suicide attempt"
Q31="Ever cigarette use"
Q32="Initiation of cigarette use"
Q33="Current cigarette use"
Q34="Smoked >10 cigarettes"
Q35="Cigarettes from store"
Q36="Smoking cessation"
Q37="Current smokeless tobacco use"
Q38="Current cigar use"
Q39="Electronic vapor product use"
Q40="Current electronic vapor product use"
Q41="Ever alcohol use"
Q42="Initiation of alcohol use"
Q43="Current alcohol use"
Q44="5 or more drinks in a row"
Q45="Largest number of drinks"
Q46="Source of alcohol"
Q47="Ever marijuana use"
Q48="Initiation of marijuana use"
Q49="Current marijuana use"
Q50="Ever cocaine use"
Q51="Ever inhalant use"
Q52="Ever heroin use "
Q53="Ever methamphetamine use"
Q54="Ever ecstasy use"
Q55="Ever synthetic marijuana use"
Q56="Ever steroid use"
Q57="Ever prescription drug use"
Q58="Illegal injected drug use"
Q59="Illegal drugs at school"
Q60="Ever sexual intercourse"
Q61="Sex before 13 years"
Q62="Multiple sex partners"
Q63="Current sexual activity"
Q64="Alcohol/drugs and sex"
Q65="Condom use"
Q66="Birth control pill use"
Q67="Sex of sexual contacts"
Q68="Sexual identity"
Q69="Perception of weight"
Q70="Weight loss"
Q71="Fruit juice drinking"
Q72="Fruit eating"
Q73="Salad eating"
Q74="Potato eating"
Q75="Carrot eating"
Q76="Other vegetable eating"
Q77="Soda drinking"
Q78="How many glass of milk 7 days"
Q79="Breakfast eating"
Q80="Physical activity >= 5 days"
Q81="Television watching"
Q82="Computer use"
Q83="PE attendance"
Q84="Sports team participation"
Q85="HIV testing"
Q86="Oral health care"
Q87="Asthma"
Q88="Hours of sleep on school night"
Q89="Grades in school"
Q90="Usual use of marijuana"
Q91="Ever used LSD"
Q92="Sports drinks"
Q93="Plain water"
Q94="Food allergies"
Q95="Muscle strengthening"
Q96="Indoor tanning"
Q97="Sunburn"
Q98="Difficulty concentrating"
Q99="How well speak English"
QN8="Rarely or never wore a bicycle helmet"
QN9="Rarely or never wore a seat belt"
QN10="Rode with a driver who had been drinking alcohol"
QN11="Drove when drinking alcohol"
QN12="Texted or e-mailed while driving a car or other vehicle"
QN13="Carried a weapon"
QN14="Carried a gun"
QN15="Carried a weapon on school property "
QN16="Did not go to school because they felt unsafe at school or on their way to or from school "
QN17="Were threatened or injured with a weapon on school property "
QN18="Were in a physical fight "
QN19="Were injured in a physical fight "
QN20="Were in a physical fight on school property "
QN21="Were ever physically forced to have sexual intercourse"
QN22="Experienced physical dating violence"
QN23="Experienced sexual dating violence"
QN24="Were bullied on school property"
QN25="Were electronically bullied"
QN26="Felt sad or hopeless"
QN27="Seriously considered attempting suicide"
QN28="Made a plan about how they would attempt suicide"
QN29="Attempted suicide"
QN30="Attempted suicide that resulted in an injury, poisoning, or overdose that had to be treated by a doctor or nurse"
QN31="Ever tried cigarette smoking"
QN32="Smoked a whole cigarette before age 13 years"
QN33="Currently smoked cigarettes"
QN34="Smoked more than 10 cigarettes per day"
QN35="Usually obtained their own cigarettes by buying them in a store or gas station"
QN36="Tried to quit smoking cigarettes"
QN37="Currently used smokeless tobacco "
QN38="Currently smoked cigars"
QN39="Ever used electronic vapor products"
QN40="Currently used electronic vapor products"
QN41="Ever drank alcohol "
QN42="Drank alcohol before age 13 years "
QN43="Currently drank alcohol"
QN44="Drank five or more drinks of alcohol in a row "
QN45="Reported that the largest number of drinks they had in a row was 10 or more  "
QN46="Usually obtained the alcohol they drank by someone giving it to them"
QN47="Ever used marijuana "
QN48="Tried marijuana before age 13 years "
QN49="Currently used marijuana "
QN50="Ever used cocaine "
QN51="Ever used inhalants"
QN52="Ever used heroin "
QN53="Ever used methamphetamines "
QN54="Ever used ecstasy "
QN55="Ever used synthetic marijuana"
QN56="Ever took steroids without a doctor's prescription "
QN57="Ever took prescription drugs without a doctor's prescription "
QN58="Ever injected any illegal drug "
QN59="Were offered, sold, or given an illegal drug on school property"
QN60="Ever had sexual intercourse"
QN61="Had sexual intercourse before age 13 years"
QN62="Had sexual intercourse with four or more persons"
QN63="Were currently sexually active"
QN64="Drank alcohol or used drugs before last sexual intercourse"
QN65="Used a condom "
QN66="Used birth control pills "
QN67="Had sexual contact with females, males, or females and males"
QN68="Described themselves as gay or lesbian or bisexual"
QN69="Described themselves as slightly or very overweight"
QN70="Were trying to lose weight"
QN71="Did not drink fruit juice"
QN72="Did not eat fruit"
QN73="Did not eat salad"
QN74="Did not eat potatoes"
QN75="Did not eat carrots"
QN76="Did not eat other vegetables"
QN77="Did not drink a can, bottle, or glass of soda or pop "
QN78="Did not drink milk"
QN79="Did not eat breakfast"
QN80="Were physically active at least 60 minutes per day on 5 or more days"
QN81="Watched television 3 or more hours per day"
QN82="Played video or computer games or used a computer 3 or more hours per day"
QN83="Attended physical education classes on 1 or more days"
QN84="Played on at least one sports team"
QN85="Were ever tested for HIV"
QN86="Saw a dentist"
QN87="Had ever been told by a doctor or nurse that they had asthma"
QN88="Had 8 or more hours of sleep"
QN89="Made mostly A's or B's in school"
QN90="usually used marijuana by smoking it in a joint, bong, pipe, or blunt"
QN91="used hallucinogenic drugs"
QN92="did not drink a can, bottle, or glass of a sports drink"
QN93="Did not drink a bottle or glass of plain water"
QN94="have to avoid some foods because eating the food could cause an allergic reaction"
QN95="did exercises to strengthen or tone their muscles"
QN96="used an indoor tanning device"
QN97="had a sunburn"
QN98="have serious difficulty concentrating, remembering, or making decisions"
QN99="speak English well or very well"
site="Site Code"
qnfrcig="Currently frequently smoked cigarettes"
qndaycig="Currently smoked cigarettes daily"
qncigint="Usually obtained their own cigarettes by buying on the internet"
qntob4="Currently used tobacco"
qntob3="Currently used cigarettes, cigars, or smokeless tobacco"
qntob2="Currently smoked cigarettes or cigars"
qnnotob4="Did not currently use tobacco"
qnnotob3="Did not currently use cigarettes, cigars, or smokeless tobacco"
qnnotob2="Did not currently smoke cigarettes or cigars"
qniudimp="Used an IUD (e.g., Mirena or ParaGard) or implant (e.g., Implanon or Nexplanon) "
qnshparg="Used a shot (e.g., Depo-Provera), patch (e.g., OrthoEvra), or birth control ring (e.g., NuvaRing) "
qnothhpl="Used birth control pills; an IUD or implant; or a shot, patch, or birth control ring "
qndualbc="Used both a condom during and birth control pills; an IUD or implant; or a shot, patch, or birth control ring before last sexual intercourse"
qnbcnone="Did not use any method to prevent pregnancy "
qnfr0="Did not eat fruit or drink 100% fruit juices"
qnfr1="Ate fruit or drank 100% fruit juices one or more times per day"
qnfr2="Ate fruit or drank 100% fruit juices two or more times per day"
qnfr3="Ate fruit or drank 100% fruit juices three or more times per day"
qnveg0="Did not eat vegetables"
qnveg1="Ate vegetables one or more times per day"
qnveg2="Ate vegetables two or more times per day"
qnveg3="Ate vegetables three or more times per day"
qnsoda1="Drank a can, bottle, or glass of soda or pop one or more times per day"
qnsoda2="Drank a can, bottle, or glass of soda or pop two or more times per day"
qnsoda3="Drank a can, bottle, or glass of soda or pop three or more times per day"
qnmilk1="Drank one or more glasses per day of milk"
qnmilk2="Drank two or more glasses per day of milk"
qnmilk3="Drank three or more glasses per day of milk"
qnbk7day="Ate breakfast on all 7 days"
qnpa0day="Did not participate in at least 60 minutes of physical activity on at least 1 day"
qnpa7day="Were physically active at least 60 minutes per day on all 7 days"
qndlype="Attended physical education classes on all 5 days"
qnspdrk1="Drank a can, bottle, or glass of a sports drink one or more times per day"
qnspdrk2="Drank a can, bottle, or glass of a sports drink two or more times per day"
qnspdrk3="Drank a can, bottle, or glass of a sports drink three or more times per day"
qnwater1="Drank one or more glasses per day of water"
qnwater2="Drank two or more glasses per day of water"
qnwater3="Drank three or more glasses per day of water"
qnobese="Were Obese"
qnowt="Were Overweight"
weight="Weight"
stratum="Stratum"
psu="Primary Sampling Unit"
bmipct="Body Mass Index Percentage"
raceeth="Race/Ethnicity"
q6orig="Original value of Q6"
q7orig="Original value of Q7"
;
run;
