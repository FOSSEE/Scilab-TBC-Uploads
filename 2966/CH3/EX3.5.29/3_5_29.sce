//lubricants//
//page 3.29 example 5//
clc
vol_oil=9//in ml//
den_oil=0.81//density of oil in g/ml//
wt_oil=vol_oil*den_oil//weight f oil saponified(gms)//
volume=1.5//volume of alcoholic KOH consumed to neutralize fatty acids(ml)//
normality_KOH=0.04//normality of KOH //
A=volume*normality_KOH*56/wt_oil//formula for acid value//
printf("\nAcid value of oil is %.3f mg/g",A);