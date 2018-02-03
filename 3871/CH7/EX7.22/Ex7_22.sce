//===========================================================================
//chapter 7 example 22

clc;
clear all;

//variable declaration
W1	= 5000;		//wattmeter reading in W
W2	= -1000;		//wattmeter reading in W
VL	= 440;		//load voltage in V
f	= 50;		//frequency in Hz
VP      = 440;

//calculations
P	= W1+W2;		//total power in the load circuit in W
phi	= atan(((W1-W2)/(W1+W2))*sqrt(3));		//phase angle in °
phi1        = phi*180/%pi; 
pf	= cos(phi);		//power factor 
IP	= P/((sqrt(3)*VL*pf));	//load current per phase in A
IP1     = IP/sqrt(3);
ZP	= VP/IP1;			//load impedance per phase 
RP	= ZP*pf;			//load resistance per phase in Ω
XP	=ZP*sin(phi);		//load reactance per phase in Ω
pf1	= 0.5;			//power factor 
phi2    = (acos(pf1))*180/%pi;
//reading of wattmeter will be zero
XP1	= RP*tan((phi2)*%pi/180);		//reactnace in circuit per phase in Ω
XC	=XP-XP1;			//value of capacitive reactance in troduced in each phase in Ω
C	= 1/(2*%pi*f*XC);		//value of capacitive reactance introduced in each phase of delta connected in uF

//result
mprintf("value of capacitive reactance introduced in each phase of delta connected  = %3.0f uF",(C*10^6));

