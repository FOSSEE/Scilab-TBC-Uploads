//lubricants//
//example 3.7.17//
clc
volume_oil=7//volume of oil titrated(ml)//
density_oil=0.885//density of oil titrated//
wt_oil=volume_oil*density_oil//weight f oil saponified(gms)//
volume=3.8//volume of alcoholic KOH consumed to neutralize fatty acids(ml)//
normality_KOH=1/20//normality of KOH //
A=volume*normality_KOH*56/wt_oil//formula for acid value//
printf("\nAcid value of oil is %.2f mgs KOH",A);