//lubricants//
//page 3.38 example 10//
clc
S_C=191//Saponification value of castor oil//
wt_oil=2.5//weight f oil saponified(gms)//
blank=40//volume blank titration reading(ml)//
back=24//volume back titration reading(ml)//
volume=blank-back//volume of alcoholic KOH consumed(ml)//
N=0.5//normality of KOH for equivalence//
S_blended=volume*N*56/wt_oil//formula for saponification value//
printf("\nSaponification value of blended oil is %.1f mg/g",S_blended);
pc_C=(S_blended/S_C)*100
printf("\npercentage of castor oil in blend is %.2f percent",pc_C);