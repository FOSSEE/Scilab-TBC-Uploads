//===========================================================================
//chapter 10 example 20
clc;clear all;
//variable declaration
V1	= 200;		//voltage in V
V2	 = 126;		//voltage in V
t	= 30;		//time in seconds
V12	= 200;		//voltage in V
V22	 = 100;		//voltage in V

//calculations
//let CR = a
//V2	= V1*e^(t/C*R)
a       = t/log(V1/V2);		//C*R
//R1	= (10*R)/(10+R)
a1       = t/log(V12/V22);		//C*R1
//a1/a	=R1/R=x
x	= a1/a;
//since R1		=  (10*R)/(10+R)
//x*(10+R)*R = 10*R
//(x*10)+R*x = 10
R = (10-(x*10))/x;		//Resistance in Ω

//result
mprintf("resistance = %3.2f M Ω",R);

