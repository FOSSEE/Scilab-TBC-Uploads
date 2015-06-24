//===============================================================================
//chapter 5 exmple 3

clc;
clear;

//input data

 V       = 63.5;             //atomic weight in kg
 d       = 8.92*10^3;        //density of copper in kg/m^3
 r       = 0.7*10^-3;        //radius in m
 I       = 10;               //current in A
 e       = 1.6*10^-19;          //charge of electronin coulomb
 h       = 6.02*10^28;          //planck's constant in (m^2)*kg/s


//calculation
A        = %pi*(r^2);         // area in m^2
N        = h*d;
n        = N/V;
J        = I/A;              //current density in m/s
vd       = J/(n*e);          //drift velocity in m/s

//result
 mprintf('velocity=%2e.m/s\n',vd);

//================================================================================
