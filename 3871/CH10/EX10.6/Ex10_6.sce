//===========================================================================
//chapter 10 example 6

clc;clear all;

//variable decalartion
p	= 200.62;		//resistance in Ω
q	= 400;		//resistance in Ω
P	= 200.48;		//resistance in Ω
Q	= 400;		//resistance in Ω
S	= 100.03;		//resistance in Ω
r	= 700;		//resistance in Ω

//calculations
X   	= ((P/Q)*S)+((q*r)/(p+q))*((P/Q)-(p/q));

//result
mprintf("unknown resistance = %3.4f uΩ",X);
