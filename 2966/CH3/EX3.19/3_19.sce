//lubricants//
//page 3.38 example 9//
clc
S_C=188//Saponification value of castor oil//
wt_oil=12.3//weight f oil saponified(gms)//
blank=45//volume blank titration reading(ml)//
back=30.2//volume back titration reading(ml)//
volume=blank-back//volume of alcoholic KOH consumed(ml)//
N=0.5//normality of KOH for equivalence//
S_blended=volume*N*56/wt_oil//formula for saponification value//
printf("\nSaponification value of blended oil is %.2f mg/g",S_blended);
pc_C=(S_blended/S_C)*100
printf("\npercentage of castor oil in blend is %.2f percent",pc_C);