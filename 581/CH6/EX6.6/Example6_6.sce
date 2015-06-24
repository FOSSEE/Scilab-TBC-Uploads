
clear;
clc;

printf("\t Example 6.6\n");

T1=288; // air temperature,K
v=1.8; // air velocity,m/s
l=0.6; // length of panel, m
Q=420; // power per unit area, m^2
T2=378; // maximum temperature of surface, K

T3=Q*l/(0.0278)/(0.453*(l*v/(1.794*10^-5))^(0.50)*(0.709)^(1/3)); //maximum temperature difference 

Twmax=T1+T3;  //Twmax comes out to be 106.5 C, this is very close to 105 C,if 105 is at all conservative, Q = 420 should be safe.

T4=0.453/0.6795*T3; //average temperature difference,K

Twavg=T1+T4; //average wall temperature,K
Twa=Twavg-273;

printf("\t average wall temperature is : %.0f C\n",Twa);
//end