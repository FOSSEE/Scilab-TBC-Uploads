//===========================================================================
//chapter 5 example 30

clc;clear all;

//variable declaration
d     = 0.08;		//diameter in m
D     = 0.004;	//distance between plates in m
F      = 0.002;	//force in Newton

//calculations
e0   = 8.85*10^-12;	//permittivity in N
A      = (%pi/4)*(d^2);		//area of the plates in m**2
x      = (F*2*(D^2))/(e0*A);
V =      sqrt(x);			//potential diference in V

//result
mprintf("potential diference = %3.1f V",V);
mprintf("\nNote:final answer in textbook is wrong printed")
