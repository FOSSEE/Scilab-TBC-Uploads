//===========================================================================
//chapter 5 example 10

clc;clear all;

//variable declaration
R     = 400;		//resistance in Ω
V    = 150;		//voltmeter reading in V
I      = 0.05;		//current in A
alphac    = 0.004;	//temperature coefficient of copper 
alphas    = 0.00001;	//temperature coefficient of eureka
f          = 100;       //frequency in Hz
L        = 0.75;	//inductance in H


//calculations
//R1    = R+r;
R1     = V/(I);		//total reistance in Ω
r        = R1-R;		//swamping resistancein Ω
R11   = (R*(1+alphac))+(r*(1+alphas));		//total resistance for 1° C  rise in temperature in Ω
e       = ((R11-R1)/(R1))*100;			//percentage rise in resistance per degree rise in  temperature
W    = 2*%pi*f*L;					//inductive reactance in  Ω
Z      = sqrt((R1^2)+(W^2));		//impedance in Ω
v      = V*(R1/(Z));		//reading indicated on 100 Hz in V


//result
mprintf("R1 =%3.0f",W);
mprintf("percentage rise in resistance per degree rise in  temperature = %3.4f percentage",e);
mprintf("\nreading indicated on 100 Hz= %3.1f V",v);
