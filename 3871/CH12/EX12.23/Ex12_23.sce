//=====================================================================================
//Chapter 12 example 23

clc;clear all;

//variable declaration
f    = 165*10^3;		//frequency in Hz
C1        = 208*10^-12;		//capacitance in F	
C2        = 184*10^-12;		//capacitance in F
Q1      = 80;				//Q-factor
Q2      = 50;				//Q-factor

//calculations
x    = C2*Q2;
y    = C1*Q1;
w    = 2*(%pi)*f;
Rm    = (1/(w))*((1/(x))-(1/(y)));		//resistive component of unknown impedance in Ω
Xm    = (1/(w))*((1/C2)-(1/C1));		//reactive component of unknown impedance in Ω


//result
mprintf("resistive component of unknown impedance =%3.2f Ω",Rm);
mprintf("\nreactive component of unknown impedance =%3.0f Ω",Xm);

