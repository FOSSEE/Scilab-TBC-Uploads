// Example 3.7

clear; clc; close;

format('v',6);
// Given data
Beta=15;//in degree
m=3;//no. of phase(1-Beta*Nr/360)

//Calculations
//Formula : Beta=360/m/Nr
Nr=360/m/Beta;//no. of rotor teeth
disp(Nr,"No. of rotor teeth ; ");
//Formula : Beta=(Ns~Nr)/Ns/Nr*360;//in degree
//When Ns>Nr
Ns=Nr/(1-Beta*Nr/360);//no. of stator teeth
disp(Ns,"When Ns>Nr, No. of stator teeth : ");
//When Nr>Ns
Ns=Nr/(1+Beta*Nr/360)
disp(Ns,"When Nr>Ns, No. of stator teeth : ");
