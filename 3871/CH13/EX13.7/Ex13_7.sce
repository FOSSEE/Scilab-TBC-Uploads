//=====================================================================================
//Chapter 13 example 7

clc;clear all;

//variable declaration
R1  = 180;     //resistance in Ω
R2  = 20;     //resistance in Ω
A   = 0.005;     //area in m^2
Ns   = 1000;       //number of turns on search coil 
G1   = 100*10^-6;    //galvanometer constant C
G2   = 100;           //galvanometer throw

//calculations
Rs   = R1+R2;      //total resistance of secondary circuit in  Ω
Q    = G1*G2;     //charge passed through ballistic galvanometer in C
//Q  = i*t  = (E/Rs)*t  = ((2*phi*Ns)/(t*Rs))*t = (2*phi*Ns)/Rs
phi  = (Q*Rs)/(2*Ns);     //flux in Wb
B   = phi/(A);        //flux density in Wb/m^2

//result

mprintf("flux density = %3.2f Wb/m^2",B);

