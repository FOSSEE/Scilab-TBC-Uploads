//=====================================================================================
//Chapter 13 example 17

clc;
clear all;

//variable declaration
w	= 0.03;		//width of plates in m
n	= 51;		//number of plates 
t	= 0.000489;	//thickness in m^3
f	= 50;		//frequency in Hz
Bmax	= 1;
N	= 600;
P1	= 3;		//copper loss in watts
m	= 11;		//weight in kg

//calculations
A	= w*n*t;		//mean area of plates in m^3
E	= 4.44*f*Bmax*A*N;		//induced voltage in V
//from graph corresponding to voltage of 100 volts
P2	= 30.5;		//total losses in watts
P	= P2-P1;		//iron loss in watts
PL	= P/m;		//loss per kg in watts

//result
mprintf("iron loss per kg = %3.2f watts",PL);
