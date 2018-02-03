//===========================================================================
//chapter 11 example 6

clc;
clear all;

//variable declaration
R       = 1;               //resistace in Ω
V2      = 0.238-%i*0.085;           //voltage across standard resistor in V
P       = 10;               //multiplying ower of potential divider 
V1      = 0.3375+%i*0.232;      //voltage across potential divider in V



//calculations
I       = V2/R;             //current through coil in A
V2      = P*V1;              //voltage acrossthe coil in V
Z       = V2/I;             //impedance of coil in Ω
R1       = real(Z);             // resistance of coil in Ω
X1       =imag(Z);           //reactance of coil in Ω

//result
mprintf("resistance = %3.2f Ω",R1);
mprintf("\nreactance = %3.3f Ω",X1);
