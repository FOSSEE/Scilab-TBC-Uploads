//lubricants//
//example 3.7.15//
clc
volume_oil=20//volume of oil titrated(ml)//
density_oil=0.86//density of oil titrated//
wt_oil=volume_oil*density_oil//weight f oil saponified(gms)//
volume=2.5//volume of alcoholic KOH consumed to neutralize fatty acids(ml)//
normality_KOH=0.1//normality of KOH //
A=volume*normality_KOH*56/wt_oil//formula for acid value//
printf("\nAcid value of oil is %.3f mgs KOH",A);