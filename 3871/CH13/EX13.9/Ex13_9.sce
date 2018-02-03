//=====================================================================================
//Chapter 13 example 9
clc;clear all;

//variable declaration
R  = 2000;     //resistance in Ω
l   = 1;     //mean length of iron ring in m
A   = 350*10^-6;     //area in m**2
Ns   = 200;       //number of turns on secondary  coil 
G1   = 1*10^-6;    //galvanometer constant C
G2   = 100;           //galvanometer throw
N    =100;

//calculations
u0   = 4*(%pi)*10^-7;
H    = (N*I)/(l);    //magnetising force with 10 A current
Q    = G1*G2;     //charge passed through ballistic galvanometer in C
//Q  = i*t  = (E/Rs)*t  = ((2*phi*Ns)/(t*Rs))*t = (2*phi*Ns)/Rs
phi  = (Q*R)/(2*Ns);     //flux in Wb
B   = phi/(A);        //flux density in Wb/m**2
ur   = (B/(u0*H));     //relative permeability 

//result
mprintf("flux density = %3.3f Wb/m**2",B);
mprintf("\nrelative permeability = %3.0f",ur);
