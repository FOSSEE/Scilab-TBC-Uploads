// chapter 6 example 2o

clc;
clear;


//input data
 n  = 3.0*10^28;       //number of electrons per m^3
 t   = 3*10^-14;     //time in s
 m   = 9.1*10^-31;    //mass of electron in kg
 L   = 2.44*10^-8;       //lorentz number in ohm W/K^2
 T  = 330;          //temperature in kelvin 
 e   = 1.6*10^-19;       //charge of electron


//calculation
 sigma  = n*e^2*t/m;    //electrical conductivity in (ohm-m)^-1
 
//result
 mprintf('electrial conductivity=%3.2e.(ohm-m)^-1\n',sigma);