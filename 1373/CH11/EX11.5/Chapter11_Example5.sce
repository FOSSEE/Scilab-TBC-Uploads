//Chapter-11, Example 11.5, Page 485
//=============================================================================
clc
clear

//INPUT DATA
p=6;//Pressure of water in atm
D=0.02;//Diameter of the tube in m
Ts=10;//Wall temperature in degree C
L=1;//Length of the tube in m

//CALCULATIONS
p1=(p*1.0132*10^5)/10^6;//Pressure in MN/m^2
h=(2.54*Ts^3*exp(p1/1.551));//Heat transfer coefficient in W/m^2.K
Q=(h*3.14*D*L*Ts);//Heat transfer rate in W/m

//OUTPUT
mprintf('Heat transfer rate is %3.1f W/m',Q)

//=================================END OF PROGRAM==============================
