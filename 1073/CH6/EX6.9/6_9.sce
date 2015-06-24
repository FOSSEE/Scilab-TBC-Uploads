clc;
clear;
//Example 6.9
Tf=298      //Feed temperature in [K]
T_dash=373      //[K]
Cpf=4       //[kJ/kg.K]
fc=0.2      //Final concentration of salt
ic=0.05     //Initial concentration
mf_dot=20000    //[kg/h] Feed to evaporator
mdash_dot=ic*mf_dot/fc      //Thick liquor [kg/h]
mv_dot=mf_dot-mdash_dot     //Water evaporated in [kg/h]
lambda_s=2185       //[kJ/kg]
lambda=2257       //[kJ/kg]
bpr=7       //Boiling point rise[K]
T=T_dash+bpr     //Boiling point of solution in[K]
Ts=39       //Temperature of condensing steam in [K]
ms_dot=(mf_dot*Cpf*(T-Tf)+mv_dot*lambda)/lambda_s   //Steam consumption in [kg/h]
eco=mv_dot/ms_dot           //Economy of evaporator 
Q=ms_dot*lambda_s               //[kJ/h]
Q=Q*1000/3600           //[J/s]
printf("\nHeat load is %d W or J/s",round(Q));
printf("\n\nEconomy of evaporator is %f ",eco);

printf("\n\nNOTE:Again there is a calcualtion mistake in book at line 19 of code,it is written as 4041507.1 instead of 40415071 \n\n");
