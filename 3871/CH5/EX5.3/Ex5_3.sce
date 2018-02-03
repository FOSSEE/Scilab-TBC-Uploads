//===========================================================================
//chapter 5 example 3
clc;
clear all;

//variable declaration
R    = 500;		//resistance in 
r    = 2000;            //non inductive resistance in
V   = 250;	     //voltage in V
f     = 50;             //frequency in Hz
L    = 1;           //inductance in H


//calculations
x       = (r+R)^2;
W     = (2*%pi*f*L)^2;
Z     =sqrt(x+W);		//impedance of the instrument circuit
I    = V/(Z);			//current drawn by instrument in A
I2   = V/(R+r);			//since voltmeter reads correctly on dc supply on 250 V,corresponding current in A
V1   = V*(I/(I2));             //voltmeter reading when connected to 250V ,50Hz  supply

//result
mprintf("voltmeter reading = %3.1d V",V1);

