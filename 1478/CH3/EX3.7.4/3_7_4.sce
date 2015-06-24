//lubricants//
//example 3.7.4//
clc
wt_oil=2.5//weight f oil saponified(gms)//
blank=40//volume blank titration reading(ml)//
back=20//volume back titration reading(ml)//
normality_KOH=0.25//normality of KOH //
normality_HCl=.5//normality of HCl//
e=normality_HCl/normality_KOH//for equivalence in titration //
volume=(blank-back)*e//volume of alcoholic KOH consumed(ml)//
S=volume*normality_KOH*56/wt_oil//formula for saponification value//
printf("\nSaponification value of oil is %.0f mgs KOH",S);