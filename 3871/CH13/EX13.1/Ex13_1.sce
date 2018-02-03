//=====================================================================================
//Chapter 13 example 1

clc;clear all;

//variable declaration
l   = 0.6;     //length of solenoid in m
N   = 600;     //number of turns 
I   = 2;       //current passing through solenoid in A
ur   = 1;      //air coiled solenoid 
r    = 0.025;  //radius in m

//calculations
H   = (N*I)/(l);      //magnetic field at the centre in AT/metre
u0   = 4*(%pi)*(10^-7);   //flux 
a    = ((%pi)/(4))*(r^2);    //area 
phi  = ur*u0*H*a;         //flux  passing through thesecondary coil

//calculations
mprintf("magnetic field = %3.2f AT/metre",H);
mprintf("flux  = %3.2e Wb",phi);
