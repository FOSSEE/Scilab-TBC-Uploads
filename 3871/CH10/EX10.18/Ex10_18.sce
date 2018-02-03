//===========================================================================
//chapter 10 example 18

clc;clear all;

//variable declaration
V1	= 250;		//voltage in V
V2	 = 92;		//voltage in V
t	= 60;		//time in seconds
C	= 600*10^-12;	//capacitance in F

//calculations
//V2	= V1*e^(t/C*R)
R	= t/(C*log(V1/V2))

//result
mprintf("insulation resistance = %3.0f M  Ω",(R*10^-6));
