//===========================================================================
//chapter 6 example 27

clc;
clear all;

//variable declaration
KT	= 198;	//turn ratio
e	=0;	//ratio error
Is	= 5;	// secondary current in A
P	= 5;	//load in VA
Rs	= 0.02;	//resistance in Ω
KN	= 200;	//KN=KC since e=0
KC	= 200;

//calculations
V2	= P/Is;	//secondary voltage in V
Es	= V2+(Is*Rs);	//secondary induced emf in V
Ep	= Es/KT;		//primary induced emf 
Ie	= (KC-KT)*Is;	//eddy current loss in A
IL	= Ep*Ie;		//iron loss in W

//result
mprintf("iron loss = %3.3f mW",(IL*10^3));
