//Example 5.19
clear;
clc;

//Given
delHf=128.6;//latent heat of fusion of benzene in J g^-1
Vs=1.06;//volume of solid in cm^3 g^-1
Vl=1.119;//volume of liquid in cm^3 g^-1
T=278;//temperature in K

//To determine the pressure to bring about a change in melting point by 1 K
delVm=Vl-Vs;//change in volume in cm^3 g^-1
a=(delHf*10)/(T*delVm*1.01325);//a=(dP/dT)
mprintf('To cause an increase of 1K in melting point of benzene,atmospheric pressure change required=%f atm K^-1',a);
//end