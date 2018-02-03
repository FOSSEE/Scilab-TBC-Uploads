//===========================================================================
//chapter 5 example 4
clc;clear all;

//variable declaration
Vac    = 500;   //voltage in V
Iac    = 0.1;		//current in A
f     = 50;         //frequency in Hz
L    = 0.8;             //inductance in H
Vdc   = 300;            //voltage in V
Z     =5000;

//calculations
W    = 2*(%pi)*f*L;		
R       = (sqrt((Z^2)-(W^2)));	//resistance in Ω
Idc   = Vdc/(R);			//instrument current in A
V     = (Vac/(Iac))*(Idc);		//Reading of instrument when connected to 300V in V

//result
mprintf("Reading of instrument when connected to 300V = %3.1f V",V);


