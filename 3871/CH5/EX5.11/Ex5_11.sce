//===========================================================================
//chapter 5 example 11
clc;clear all;

//variable declaration
V     = 300;		//voltage in V
R     = 12000;	//coil resistance in  Ω
B     = 6*10^-2;	//flux density in Wb/m**2
l       = 0.04;	//length in m 
r      = 0.03;		//width in m
N    = 100;
Tc    = 25*10^-7;		//torque in Nm per degree

//calculations
i    = V/(R);		//current in A
Td   = N*B*i*l*r;		//deflecting Torque in Nm
//Tc=Td;
//Tc =(25*10^-7)*theta
theta = Td/(Tc);		//defelction in °

//result
mprintf('defelction = %3.0f °",theta);

