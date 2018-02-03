//=====================================================================================
//Chapter 16 example 3

clc;clear all;

//variable declaration
Va  = 1000;   //accelerating voltage in V
e    = 1.6*10^-19;      //charge of electron in C
m    = 9.1*10^-31;      //mass of electron in kg


//calcuations
V     = sqrt(2*Va*(e/m));    //maximum velocity of electrons in m/s

//result
mprintf("maximum velocity of electrons = %3.3e m/s",V);

