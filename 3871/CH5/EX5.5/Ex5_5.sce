//========================================================
//chapter 5 example 5
clc;clear all;

//variable decalaration
Iac     = 0.1;              //current in A
f     = 50;             //frequency in Hz
L    = 0.8;         //inductance in H
Vac   = 300;	//voltage in V
V      = 200;		//true value in V

//calculations
XL  = 2*%pi*f*L;		//instrument reactance in Ω
Z     = Vac/(Iac);		//instrument impedance in Ω
R1    = sqrt((Z^2)-(XL^2));	//instrument resistance(R+r) in Ω
Idc   = V/(R1);			//instrument current when connected to 200V dc supply
V1     = (Idc*Vac)/(Iac);		//reading of the instrument when connected to 200V dc supply
e    = ((V1-V)/(V))*100;

//result
mprintf("percentage error = %3.2f percentage",e);

