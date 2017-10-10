// Exa 4.3

clc;
clear all;

// Given data
// Refer Fig. 4.3 on page no. 77

Rm=50; // Internal resistance of Voltmeter(ohms)
Ifsd=2; // full sclae deflection current(mA)

//Solution

// For 10V range(V4 position of switch)
V1=10;//Volts
Rt1=V1/(Ifsd*10^-3); //total resistance in  k Ohms
R4=Rt1-Rm;
printf('The value of R4 = %d Ohms \n',R4);
// For a 50V range(V3 position of switch)
V2=50;//Volts
Rt2=V2/(Ifsd*10^-3);
R3=Rt2-(R4+Rm);
printf(' The value of R3 = %d k Ohms \n',R3/1000);

// For 100V range(V2 position of switch)
V3=100;//Volts
Rt3=V3/(Ifsd*10^-3); //total resistance in  k Ohms
R2=Rt3-(R3+R4+Rm);
printf(' The value of R2 = %d k Ohms \n',R2/1000);
// For a 250V range(V3 position of switch)
V4=250;//Volts
Rt4=V4/(Ifsd*10^-3);
R1=Rt4-(R2+R3+R4+Rm);
printf(' The value of R1 = %d k Ohms \n',R1/1000);



