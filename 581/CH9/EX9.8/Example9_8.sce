
clear ;
clc;

printf("\t Example 9.8\n");

T1=373;         //saturated temp.of water, K
a=957.6;          //desity difference,kg/m^3
s=0.0589;       //surface tension,kg/s^2
Hfg=2257*1000;       //latent heat,J/kg
a2=0.597;           //density of gas, kg/m^3

Qmin=0.09*a2*Hfg*(9.8*a*s/(959^2))^0.25+2;

printf("\t peak heat flux is : %.0f W/m^2  ,from the figure, we read 20000 W/m^2, which is the same, within the accuracy of graph.\n",Qmin);      

//end