//===========================================================================
//chapter 10 example 21
clc;clear all;

//variable declaration
V1	= 450;		//voltage in V
V2	 = 280;		//voltage in V
t	= 15.2;		//time in minutes
t1	= 10.8;		//time in minutes
C	= 2.5*10^-6;	//capacitance in F

//calculations
t12	= t*60;		//time in seconds
t22	= t1*60;		//time in seconds
//V2	= V1*e^(t/C*R)
x    = V1/V2;
y    = log(x);
R	= t12/(C*y);
R1  =t22/(C*y);
//R1	= t1/(C*log(V1/V2));
//1/R` 	= (1/R1)-(1/R)
R11	= (R1*R)/(R-R1);		//unknown resistance in Ω

//result
mprintf("unknown resistance= %3.2d M Ω",(R11*10^-6));
