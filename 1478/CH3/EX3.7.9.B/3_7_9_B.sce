//lubricants//
//example 3.7.9.B//
clc
wt_oil=3//weight f oil saponified(gms)//
blank=36//volume blank titration reading(ml)//
back=12//volume back titration reading(ml)//
volume=blank-back//volume of alcoholic KOH consumed(ml)//
normality_KOH=0.5//normality of KOH //
S=volume*normality_KOH*56/wt_oil//formula for saponification value//
printf("\nSaponification value of oil is %.f mgs KOH",S);