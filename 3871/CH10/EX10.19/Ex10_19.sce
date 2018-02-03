//===========================================================================
//chapter 10 example 19

clc;clear all;

//variable declaration
V1	= 100;		//voltage in V
V2	 = 80;		//voltage in V
t	= 20;		//time in seconds
C	= 300*10^-12;	//capacitance in F

//calculations
//V2	= V1*e^(t/C*R)
R	= t/(C*log(V1/V2))

//result
mprintf("insulation resistance = %3.2e M Ω",(R*10^-6));

