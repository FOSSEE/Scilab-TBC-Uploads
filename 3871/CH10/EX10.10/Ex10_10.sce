//===========================================================================
//chapter 10 example 10


clc;
clear all;

//variable declaration
P	= 100;		//resistance in Ω
Q	= 100;		//resistance in Ω
S	= 230;		//resistance in Ω
dP	= 0.02;		//limiting error(dP/P) in  %
dQ	= 0.02;		//limiting error(dQ/Q) in  %
dS	= 0.01;		//limiting error(dS/S) in  %

//calculations
R	= (P/Q)*S;		//unknown reistance in Ω
dR	=dP+dQ+dS;	//limiting error(dR/R) in %
dR1 = (dR*R)/100;
R1	= R-dR1;		//limitng values of unknown resistance in Ω
R2	= R+dR1;		//limitng values of unknown resistance in Ω

//result
mprintf("unknown resistance  = %3.0f Ω ",R);
mprintf("limitng values of unknown resistance %3.3f Ω to %3.3f  Ω",R1,R2);
