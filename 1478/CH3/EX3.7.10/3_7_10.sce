//lubricants//
//example 3.7.10//
clc
wt_oil=2.5//weight f oil saponified(gms)//
volume=2.5//volume of alcoholic KOH consumed to neutralize fatty acids(ml)//
normality_KOH=(1/100)//normality of KOH //
A=volume*normality_KOH*56/wt_oil//formula for acid value//
printf("\nAcid value of oil is %.2f mgs KOH",A);