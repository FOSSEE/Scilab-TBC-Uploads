//ques-5.7
//Calculating concentration of acetate ion and degree of ionization
clc
m=3;//weight of acetic acid added (in g)
Ka=0.000018;//for acetic acid
N=m/60;//normality of acetic acid
//Ka = x^2/N
x=sqrt(N*Ka);//content of acetate ion
deg=(x/N);//degree of ionization
printf("The concentration of acetate ion is %.6f mol/L and degree of ionization is %.3f.",x,deg);
