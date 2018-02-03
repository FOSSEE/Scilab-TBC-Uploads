//=====================================================================================
//Chapter 13 example 10

clc;clear all;

//variable declaration
d    = 0.3;    //diameter in m
a    = 4*10^-4;     //cross sectional area of iron ring in m**2
N    = 80;      //number of turns on magnetising coil
Ns    = 30;     //number of turns on secondary coil
F     = 0.1*10^-3;     //flux meter constant in Wb-turn
D     = 46;       //deflection factor
I     = 2;      //current in A

//calculations
//phi  = (N*I*u0*ur*a)/l
//  phi = x*l   
//lat x = (N*I*u0*a)/l
l    = d*%pi;
u0   = 4*(%pi)*10^-7;
x   =(N*I*u0*a)/(l);      
// total change in Wb-turns y = 2*phi*Ns = 2*x*ur*Ns
y   = 2*x*Ns;
df   = F*D;     //change in flux measuredby the flux meter in wb-turns
ur   =df/y;     //relative permeability

//result
mprintf("relative permeabitlity = %3.0d",ur);
mprintf("\n Note:textbook answer represents the approximate value")

