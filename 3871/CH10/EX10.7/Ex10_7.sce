//===========================================================================
//chapter 10 example 7


clc;clear all;


//variable declaration
P	= 100;		//resistance in Ω
Q	= 10;		//resistance in Ω
S	= 46;		//resistance in Ω

//calculations
R	= (P/Q)*S;		//unknown reistance in Ω

//result
mprintf("unknown resistance  = %3.2f Ω ",R);
