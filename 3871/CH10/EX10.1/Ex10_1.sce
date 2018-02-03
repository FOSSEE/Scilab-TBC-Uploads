//===========================================================================
//chapter 10 example 1


clc;
clear all;

//variable declaration
V     = 100;        //voltmeter reading in V
I     =0.005;       //ammeter reading in A
S     = 1000;       //sensitivity of voltmeter in Ω per volt
v     = 150;         //voltmeter range in V

//calculations
Rv     = S*v;           //voltmeter resistance in Ω
Rm     = V/I;           //apparent value of unknown resistor in Ω
y      = V/(I*Rv);
x      = I*(1-y);
Rx     = V/x;                   //actual value of unknown resistor in Ω
er      = ((Rm-Rx)/Rx)*100;              //error due to loading effect of voltmeter in %

//result
mprintf("apparent value of unknown resistor = %3.2f Ω",Rm);
mprintf("\nactual value of unknown resistor = %3.2f Ω",Rx);
mprintf("\nerror due to loading effect of voltmeter  = %3.2f percentage",er);
