//lubricants//
//page 3.27 example 1//
clc
wt_oil=4.55//weight f oil saponified(gms)//
volume=2.1//volume of alcoholic KOH consumed to neutralize fatty acids(ml)//
normality_KOH=0.02//normality of KOH //
A=volume*normality_KOH*56/wt_oil//formula for acid value//
printf("\nAcid value of oil is %.3f mg/gm",A);