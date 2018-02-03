//===========================================================================
//chapter 7 example 24
clc;
clear all;

//variable declaration
W1	= 2000;		//reading of wattmeter in watts
W2	= 1000;		//reading of wattmeter in watts

//calculations
Q	= sqrt(3)*(W1-W2);		//reactive power of the network in V A
P	= Q/(sqrt(3));		//wattmeter reading when current coil is connected in one phase and the potential coil across the two phases in VA

//result
mprintf("Wattmeter reading = %3.2f  reactive volt amperes",P);


