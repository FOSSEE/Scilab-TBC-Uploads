
clear;
clc;

printf("\t Example 9.5\n");

T1=373;         //saturated temp.of water, K
a=957.6;          //desity difference,kg/m^3
s=0.0589;       //surface tension,kg/s^2
Hfg=2257*1000;       //latent heat,J/kg
a2=0.597;           //density of gas, kg/m^3

Qmax=0.149*a2^0.5*Hfg*(9.8*a*s)^0.25/1000000;

printf("\t peak heat flux is : %.2f MW/m^2 ,from figure it can be shown that qmax =1.16 MW/m^2, which is less by only about 8 percent.\n",Qmax);

//end