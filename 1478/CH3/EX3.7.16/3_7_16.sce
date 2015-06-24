//lubricants//
//example 3.7.16//
clc
wt_oil=3//weight f oil saponified(gms)//
volume=.2//volume of alcoholic KOH consumed to neutralize fatty acids(ml)//
normality_KOH=0.025//normality of KOH //
A=volume*normality_KOH*56/wt_oil//formula for acid value//
printf("\nAcid value of oil is %.4f mgs KOH",A);