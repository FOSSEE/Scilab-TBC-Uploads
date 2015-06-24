//Chapter-6 example 6
//=============================================================================
clc;
clear;
//input data
Vd   = 2.2*10^5;//Carrier Drift Velocity in m/s
l    = 5*10^-6;//drift region length
//Calculations
F    = Vd/(2*l);//frequency of IMPATT Diode
//output
mprintf('Frequency of IMPATT Diode is %g Ghz',F/10^9);
//=============end of the program===============================================
