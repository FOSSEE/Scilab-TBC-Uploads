//lubricants//
//example 3.7.9//
clc
S_C=192//Saponification value of castor oil//
wt_oil=16//weight f oil saponified(gms)//
blank=45//volume blank titration reading(ml)//
back=31.5//volume back titration reading(ml)//
volume=blank-back//volume of alcoholic KOH consumed(ml)//
N_H=0.5//normality of HCl in titration//
V_H=blank//volume of HCl in titration(ml)//
V_K=50//volume of KOH in titration(ml)//
N_K=N_H*V_H/V_K//normality of KOH for equivalence//
S_blended=volume*N_K*56/wt_oil//formula for saponification value//
printf("\nSaponification value of blended oil is %.2f mgs KOH",S_blended);
pc_C=(S_blended/S_C)*100
printf("\npercentage of castor oil in blend is %.3f percent",pc_C);