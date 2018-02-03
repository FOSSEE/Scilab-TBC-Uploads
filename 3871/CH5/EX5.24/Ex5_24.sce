//===========================================================================
//chapter 5 example 24

clc;clear all;

//variable declaration
Iav    = 40*10^-3;		//average value of current in mA
Ks     = 1.11;	//assuming form factor for sinusoidal wave
f        = 50;		//frequency in Hz
V       = 10^5;	//voltage in V

//calculations
Irms    = Iav*Ks;		//RMS value of current in A
//Irms   = V/Xc = 2*%pi*f*C*V 
C           = Irms/(2*%pi*f*V);		//capacitance to be connected in pF

//result

mprintf("capacitance to be connected = %3.0f pF",(C*10^12));

     
