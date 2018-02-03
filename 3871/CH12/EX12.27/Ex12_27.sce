//=====================================================================================
//Chapter 12 example 27

clc;clear all;

//variable declaration
f    = 450*10^3;		//resistance inHz
C     = 250*10^-12;		//capcaitance in F
Rsh   = 0.75;		//resistance in  Ω
 Q      = 105;				//Q-factor

//calculations
w      = 2*(%pi)*f;
L        = 1/(((w)^2)*(C));		//inductance in uH
R       = ((w*L)/(Q))-Rsh;		//resistance of the coil   in  Ω
 
//result
mprintf("inductance = %3.2f uH",(L*10^6));

mprintf("\n resistance of the coil  = %3.2f Ω",R);

