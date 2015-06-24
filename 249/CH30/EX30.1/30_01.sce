clear
clc
k=sqrt(3);//hr^-1
n=1;
V=30;//m3
CR=0.12;//kgalc/kgsol
density=1000;//kg/m3
//CR in kg/m3
CR=CR*density;
CR_opt=CR/2;
alcohol_per=CR_opt*100/density;//PErcentage of alcohol
printf("\n The Percentage of alchol in cocktail is %f",alcohol_per)
//From fig 30.4
kt=1;
t=kt/k;
t_opt=2*t;
v_opt=V/t_opt;
printf("\n The Optimum feed rate is %f",v_opt)
printf(" m3/hr")
//The production rate of alcohol 
FR=v_opt*CR_opt;
printf("\n The production rate of alcohol is %f ",FR)
printf(" kgalc/hr")