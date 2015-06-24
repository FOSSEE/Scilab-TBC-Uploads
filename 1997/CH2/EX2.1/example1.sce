//Chapter-2 example 2.1
//=============================================================================
clc;
clear;
Tdelay=200*10^-6;       //time delay in sec
Vo=3*10^8;              //velocity in m/s
//Calculations
R=(Vo*Tdelay)/2;        //Range of the target in kms


//Output
mprintf('Range of the target is %3.1f Kms',R/1000);
//=============================================================================
