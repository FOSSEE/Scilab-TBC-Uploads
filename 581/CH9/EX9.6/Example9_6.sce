
clear ;
clc;

printf("\t Example 9.6\n");

T1=628;         //saturated temp.of water, K
a=13996;          //desity difference,kg/m^3
s=0.418;       //surface tension,kg/s^2
Hfg=2925*1000;       //latent heat,J/kg
a2=4;           //density of mercury, kg/m^3

Qmax=0.149*a2^0.5*Hfg*(9.8*a*s)^0.25/10^7-.015;

printf("\t peak heat flux is : %.3f MW/m^2\n",Qmax);
printf("\t the result is very close to that for water,the increase in density and surface tension have not been compensated by amuch lower latent heat.")

//end