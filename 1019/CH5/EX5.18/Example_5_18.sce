//Example 5.18
clear;
clc;

//Given
delHv=40820;//latent heat of vapourization of water in J mol^-1
Vv=30.199;//volume of vapour in dm^3 mol^-1
Vl=0.019;//volume of liquid in dm^3 mol^-1
T=373;//temperature in K

//To determine the change in boiling point with change in 1 mm pressure
delVm=Vv-Vl;
a=(delHv*760)/(T*delVm*0.001*101325);//a=(dP/dT)
b=a^(-1);//b=(dT/dP)
mprintf('change in boiling point of water per mm change in pressure=%f K mm^-1',b);
//end