//===========================================================================
//chapter 11 example 1

clc;clear all;

//variable declartion
v	= 1.0186;		//emf of standard cell in volts
l	= 60;		//length in cm
l1	= 75;		//length in cm
l2	= 66;		//length in cm
l3	= 84;		//length in cm
l4	= 40;		//length in cm
l5	= 72;		//length in cm
S	= 2;		//resistance in Ω
r	= 100;		//ratio of volt ratio box
S1	= 2.5;		//resistance in Ω
I	= 0.28;		//ammeter reading in ampere
v1	=1.25;		//voltmeter reading in volts

//calculations
v0	= v/l;		//the voltage drop per cm length of potentiometer wire in volt
V1	= v0*l1;		//emf of cell which balances at 75 cm  in volts
V2	=  v0*l2;		//emf of cell which balances at 66 cm  in volts
I1	= v/S;		//current flowing through 2 Ω resistance in A
V3	=  v0*l3;		//emf of cell which balances at 84 cm  in volts
v31	= V3*r;		//voltage of supply main in volts
V4	=  v0*l4;		//emf of cell which balances at 40 cm  in volts
I4	=V4/S1;		//current flowing through 2.5 Ω resistance in A
e	= ((I-I4)/I4)*100;	//percentage error in the ammeter reading in %
V5	=  v0*l5;		//emf of cell which balances at 72 cm  in volts
e1	= ((v1-V5)/V5)*100;	//percentage error in the voltmeter reading in %

//result
mprintf("emf of cell which balances at 75 cm  = %3.5f volts",V1);
mprintf("\ncurrent flowing through 2 Ω resistance = %3.5f A",I1);
mprintf("\nvoltage of supply main in volts = %3.5f volts",v31);
mprintf("\npercentage error in the ammeter reading = %3.1d percentage high",e);
mprintf("\npercentage error in the voltmeter reading = %3.2f percentage ",e1);

