//===========================================================================
//chapter 7 example 7
clc;clear all;

//variable declaration
V	= 250;		//load voltage in V
I	= 12;		//load current in A
Rc	= 0.1;		//resistance in Ω
Rp	=6500;		//resistance in Ω
x	= 1;		//pf cos(phi) 
y	= 0.4;		//pf cos(phi) 

//calculations
P	= V*I*x;		//power input to the apparatus in W
PL	= (I^2)*Rc;		//power lost in current coil in W
e	= (PL/P)*100;	//percentage error in %
Pc	= (V^2)/Rp;	//power lost in presuure coil in W
e	= (Pc/P)*100;	//percentage error in %
P1	= V*I*y;		//power input to the apparatus in W
PL1	= (I^2)*Rc;		//power lost in current coil in W
e1	= (PL1/P1)*100;	//percentage error in %
Pc1	= (V^2)/Rp;	//power lost in presuure coil in W
e1	= (Pc1/P1)*100;	//percentage error in %

//result
mprintf("percentage error when pf 1  lagging  %3.2f percentage",e);
mprintf("\npercentage error when pf 0.4  lagging  %3.2f percentage",e1);
