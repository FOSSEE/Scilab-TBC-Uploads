
clear ;
clc;

printf("\t Example 9.7\n");

T1=373;         //saturated temp.of water, K
a=958 ;         //desity difference,kg/m^3
s=0.0589;       //surface tension,kg/s^2
Hfg=2257*1000;       //latent heat,J/kg
a2=0.597;           //density of gas, kg/m^3
A=400*10^-4;         //area of mettalic body,m^2
V=0.0006;           //volume of body, m^3

Qmax=(0.131*a2^0.5*Hfg*(9.8*a*s)^0.25)*0.9*A/1000 ;      //large rate of energy removal, KW       as the cooling process progresses,it goes through the boiling curve from film boiling,through qmin, up the transitional boiling regime,through qmax and down the3 nucleate boiling curve. 

//R=V/A*(9.8*a/s)^0.5      since this value comes out to be 6.0, which is larger than the specified lower bound of about 4.

printf("\t the heat flow is  : %.1f KW\n",Qmax);
//to complete the calculation, it is necessary to check whether or not rate is large enough to justify the use.

R=V/A*(9.8*958/0.0589)^0.5;   //the most rapid rate of heat removal during the quench
printf("\t the most rapid rate of heat removal during the quench is : %.0f , this is larger than the specified lower bound of about 4.\n",R);
//end
