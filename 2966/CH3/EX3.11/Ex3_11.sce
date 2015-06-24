//lubricants//
//page 3.33 example 1//
clc
wt_oil=2.5//weight f oil saponified(gms)//
blank=49.0//volume blank titration reading(ml)//
back=26.4//volume back titration reading(ml)//
volume=blank-back//volume of alcoholic KOH consumed(ml)//
normality_KOH=0.4//normality of KOH//
S=volume*normality_KOH*56/wt_oil//formula for saponification value//
printf("\nSaponification value of oil is %.3f mg/g",S);