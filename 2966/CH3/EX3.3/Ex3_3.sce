//lubricants//
//page 3.28 example 3//
clc
vol_oil=20//in ml//
den_oil=0.86//density of oil in g/ml//
wt_oil=vol_oil*den_oil//weight f oil saponified(gms)//
volume=2.5//volume of alcoholic KOH consumed to neutralize fatty acids(ml)//
normality_KOH=0.1//normality of KOH //
A=volume*normality_KOH*56/wt_oil//formula for acid value//
printf("\nAcid value of oil is %.3f mg/g",A);