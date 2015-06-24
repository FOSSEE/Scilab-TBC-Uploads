//lubricants//
//page 3.33 example 2//
clc
wt_oil=5//weight f oil saponified(gms)//
blank=44//volume blank titration reading(ml)//
back=17//volume back titration reading(ml)//
volume=blank-back//volume of alcoholic KOH consumed(ml)//
normality_KOH=0.5//normality of KOH//
S=volume*normality_KOH*56/wt_oil//formula for saponification value//
printf("\nSaponification value of oil is %.1f mg/g",S);