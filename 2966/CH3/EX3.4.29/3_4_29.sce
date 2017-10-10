//lubricants//
//page 3.29 example 4//
clc
vol_oil=10//in ml//
den_oil=0.92//density of oil in g/ml//
wt_oil=vol_oil*den_oil//weight f oil saponified(gms)//
volume=4//volume of alcoholic KOH consumed to neutralize fatty acids(ml)//
normality_KOH=0.01//normality of KOH //
A=volume*normality_KOH*56/wt_oil//formula for acid value//
printf("\nAcid value of oil is %.3f mg/g",A);