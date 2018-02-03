//===========================================================================
//chapter 6 example 7

clc;clear all;

//variable declaration
B        = 0.5;			//flux density of the magnetic field in Wb/m**2
N        = 100;			//number of turns in coil
l         = 0.04;			//length in m
r         =0.03;			//width in m
Tc      = 120*10^-6;			//controlling torque in N-m
v       = 1;        //volts per division in V
n       = 100;			//number of division on full-scale
Rm  = 0;

//calculations
x     =B*N*l*r;
I     = Tc/(x);		//current for full-scale deflection in A
V     = n*v;			//full-scale reading of instrument in V
R     = (V/(I))-(Rm);			//External resistance required to be put in series with the coil in Ω

//result
mprintf("current for full-scale deflection is %3.3f A",I);
mprintf("\nExternal resistance required to be put in series with the coil is %3.2f Ω",R);
