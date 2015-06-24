//chapter 5 example 1 pg no-226
//=============================================================================
clc;
clear;
//Given Data
F     =  100*10^9;//reflex klystron operating frequency
n     =  3;//integer corresponding to mode

//Calculations
T_c   =  (n+(3/4))//transit time in cycles
T     =  T_c/F//transit time in seconds

//Output
mprintf('Transit Time of the electron in the repeller space is %3.1f ps',T/10^-12);

//=============================================================================
