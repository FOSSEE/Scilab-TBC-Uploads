//Chapter-6 example 2
//=============================================================================
clc;
clear;
//input data
Vdc   = 2.5*10^3;//Beam voltage
Idc   = 25*10^-3;//beam current in A;
Zo    = 10;//charecteristic impedance 
F     = 9.5*10^9;//TWT operating frequency in hz
N     = 40;//circuit length

//Calculations
C     = ((Idc*Zo)/(4*Vdc))^(1/3);//gain parameter
Ap     = -9.54+(47.3*N*C);//Output power gain of twt
w     = 2*%pi*F;
vdc   = 0.593*10^6*sqrt(Vdc);
Be    = w/vdc;
//Output
mprintf('Gain parameter is %3.3f\n Output Power gain is %3.3f dB\n phase constant of electron beam is %e rad/m',C,Ap,Be);

//=============end of the program==============================================
