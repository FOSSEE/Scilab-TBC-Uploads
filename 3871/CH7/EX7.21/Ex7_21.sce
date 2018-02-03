//===========================================================================
//chapter 7 example 21

clc;
clear all;

//variable declaration
R	= 10;	//resistance in Ω
XL	= 10;	//reactance  in Ω
VL	= 440;	//load voltage in V

//calculations
Z	= sqrt((R^2)+(XL^2));		//impedance of each choking coil in Ω
VP	= VL/sqrt(3);		//phase voltage in V
IP	= VP/Z;		//phase current in A
IL	= IP;		//line current in A
phi 	= atan(XL/R);	//phase angle in  °
phi1       = phi*180/%pi;

W1	= VL*IL*cos((30*%pi/180)-(phi1*%pi/180));		//wattmeter reading in W
W2	= VL*IL*cos((30*%pi/180)+(phi1*%pi/180));		//wattmeter reading in W

//result
mprintf("line current = %3.2f A",IL);
mprintf("\nwattmeter reading = %3.2f W",W1);
mprintf("\nwattmeter reading = %3.2f W",W2);

