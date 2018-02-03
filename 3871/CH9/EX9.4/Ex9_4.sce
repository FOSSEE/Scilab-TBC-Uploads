//===========================================================================
//chapter 9 example 4
clc;
clear all;

//variable declaration
f1	= 60;		//frequency in Hz
f2	= 50;		//frequency in Hz
C1	= 10^-6;		//inductance of circuit 
R1	= 100;		//resistance in Ω
C2	= 1.5*10^-6;		//capacitance 

//calculations
L1	= 1/(4*((%pi)^2)*((f1)^2)*C1);	//inductance of circuit in H
w	= 2*%pi*f2;
Z1	= R1+(%i)*((w*L1)-(1/(w*C1)));		//impedance of circuit at 50 Hz  Ω
//Z2	= R1+(%i)*((w*L2)-(1/(w*C2)));		//impedance of circuit at 50 Hz  Ω
//real(Z2)    = real(Z1)
//((w*L2)-(1/(w*C2))) = real(Z1)=963
x       =abs((w*L1)-(1/(w*C1)))
y       = 1/(w*C2);
L2      =(x+y)/w;
z       = sqrt(1/(L2*C2));
f2	= (1/(2*%pi))*(z);

//result
mprintf("resonant frequency of circuit = %3.1f  Hz",f2);
