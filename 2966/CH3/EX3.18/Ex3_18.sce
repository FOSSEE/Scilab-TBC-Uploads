//lubricants//
//page 3.37 example 8//
clc
wt_oil=1.25//weight f oil saponified(gms)//
blank=50//volume blank titration reading(ml)//
back=7.5//volume back titration reading(ml)//
volume=blank-back//volume of alcoholic KOH consumed(ml)//
normality_KOH=0.1//normality of KOH//
S=volume*normality_KOH*56/wt_oil//formula for saponification value//
printf("\nSaponification value of oil is %.1f mg/g",S);