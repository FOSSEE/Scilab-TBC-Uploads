//===========================================================================
//chapter 10 example 15
clc;clear all;

//variable declaration
P	= 200;		//resistance in arm  in  Ω
Q	= 200;		//resistance in arm  in Ω
S	= 200;		//resistance in  arm in Ω

R	= 200;		//resistance in arm  in Ω
p	= 0.5;		//power in W
r	= 2;		//r is internal resistance of battery in Ω
E   = 24;       //voltage in V

//calculations
//P	= (I^2)*R;		power disiipation in W
I	= sqrt(p/R);
V	= I*2*R;		//the maximum voltage ,that can be appliedto the bridge in V
I1	= 2*I;		//current through series resistor in A
//E	= V+(2*I*(r+R)	battery emf E
R1	= ((E-V)/I1)-r;	//series resistance in Ω

//result
mprintf("current = %3.2f A",I);
mprintf("\nseries resistance = %3.2f  Ω",R1);
