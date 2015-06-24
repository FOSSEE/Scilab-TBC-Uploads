//Chapter-6 example 7
//=============================================================================
clc;
clear;
//input data
Vd   = 3*10^5;//Carrier Drift Velocity in m/s
l    = 7*10^-6;//drift region length
//Calculations
F    = Vd/(2*l);//frequency of IMPATT Diode
//output
mprintf('Frequency of IMPATT Diode is %3.2f Ghz',F/10^9);
//=============end of the program===============================================
