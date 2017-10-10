
//OptoElectronics and Fibre Optics Communication, by C.K Sarkar and B.C Sarkar
//Example 5.6
//OS=Windows 10
////Scilab version Scilab 6.0.0-beta-2(64 bit)
clc;
clear;

//given
T1=273+20;//first temperature for an AlGaAs injection laser diode in kelvin
T2=273+80;//second temperature for an AlGaAs injection laser diode in kelvin
T01=160;//first thershold temperature in kelvin
T02=55;//second thershold temperature in kelvin;

//case 1:
Jth120C=exp(T1/T01);
Jth180C=exp(T2/T01);
Jth1=Jth180C/Jth120C;
mprintf("\n The ratio of threshold current densities for AlGaAs=%.2f",Jth1);//the answer vary due to rounding

//case 2:
Jth220C=exp(T1/T02);
Jth280C=exp(T2/T02);
Jth2=Jth280C/Jth220C;
mprintf("\n The ratio threshold current densities for InGaAs=%.2f",Jth2);
