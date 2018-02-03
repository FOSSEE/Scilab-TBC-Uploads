//===========================================================================
//chapter 7 example 6
clc;clear all;

//variable declaration
RL	= 2;	//resistance in Ω
f	=50;	//frequency in Hz
L	= 0.25;	//inductance in H
V	= 200;	//voltage in V
LP	= 5.6*10^-3;	//inductance in H
RP  =1000;

//calculations
XL	= 2*%pi*f*L;	//load reactance in Ω
ZL	= RL+XL*%i;	//load impedance
IL	= V/ZL;		//load current in A
XLP	= 2*%pi*f*LP;	//reactance in Ω
ZP	= RP+XLP*%i;	//pressure coil circuit impedance in Ω
IP	= V/ZP;		//pressure coil current in A
theta	= (atan(imag(IP)/real(IP)))*180/%pi;
Ic	= IL+IP;
Ic1     = sqrt(((imag(Ic))^2)+((real(Ic))^2))
phi  	= (atan(imag(Ic)/real(Ic)))*180/%pi;
A       = (phi-theta);
x	= cos((A*%pi)/180);
y	=cos((theta*%pi)/180);
W	= V*Ic1*y*x;	//actual reading of wattmeter in watts

//result
mprintf("actual reading of wattmeter = %3.4f  watts",W);
