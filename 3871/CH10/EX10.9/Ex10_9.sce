//===========================================================================
//chapter 10 example 9

clc;clear all;

//variable decalartion
R	=5000;		//a resistance of apporximately required to balance a bridge in Ω
E	= 0.1;		//in per cent

//calculations
R2	= R+(R*(E/100));	//limiting value in Ω
R1	= R-(R*(E/100));	//limiting value in Ω

//result
mprintf("limiting value %3.0f  Ω to %3.0f Ω",R1,R2);
mprintf("\nThus dials of 1000,100,10,1 Ω would have to be adjusted");
