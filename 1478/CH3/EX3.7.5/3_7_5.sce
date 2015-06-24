//lubricants//
//example 3.7.5//
clc
wt_oil=5//weight f oil saponified(gms)//
blank=40//volume blank titration reading(ml)//
back=10//volume back titration reading(ml)//
strength_KOH=1.4/50//strength of KOH (gm/ml)//
normality_KOH=strength_KOH*1000//normality of KOH//
normality_HCl=.5//normality of HCl//
e=normality_HCl/normality_KOH//for equivalence in titration//
volume=(blank-back)*e//volume of alcoholic KOH consumed(ml)//
S=volume*normality_KOH*56/wt_oil//formula for saponification value//
printf("\nSaponification value of oil is %.0f mgs KOH",S);