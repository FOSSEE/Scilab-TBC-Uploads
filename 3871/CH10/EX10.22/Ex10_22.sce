//===========================================================================
//chapter 10 example 22
clc;
clear all;

//variable declaration
r	= 250;		//number of scale divisions galvanometer can read
s	= 2.5;		//universal shunt multiplier
r1	= 350;		//number of scale reading
s1	= 1000;		//universal shunt multiplier when standard resistor is connecter
S	= 1000000;

//calculations
//IR praportional to galvanometer*universal shunt multiplier
IR	= r*s;	//current through the circuit with unknown resistance Rconnected
Is	= r1*s1;	//current through the circuit with standard resistance in S
R1	= (Is/IR)*S;	//insulation resistance of cable in Ω

//result
mprintf("insulation resistance of cable = %3.2f MΩ",(R1*10^-6));
