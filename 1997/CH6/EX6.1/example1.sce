//Chapter-6 example 1
//=============================================================================
clc;
clear;
//input data
F     = 9*10^9;//Reflex Klystron operating frequency in hz
Va    = 300;//beam voltage in volts
I     = 20;//Beam current in mA
n     = 1;// for 7/4 mode

//Calculations
//transit time for reflector space = n+3/4
I1        = I*10^-3;//beam current in mA
Prfmax    = (0.3986*I1*Va)/(n+3/4);//maximum RF power
//Output
mprintf('Maximum R-F power is %3.3f Watts',Prfmax);

//=============end of the program==============================================
