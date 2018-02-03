//===========================================================================
//chapter 11 example 8

clc;
clear all;

//variable declaration
R1    = 0.1;        //standard resistance in Ω
V1  = 0.35-%i*0.1;     //voltage drop across  resistance in V
V2  = 0.8-%i*0.15;       //voltage  across coil in V

//calculations
I    = V1/R1;,        //current through coil in A
V     = 300*V2;        //apply voltage V
x1   = real(I);
y1   = abs(imag(I));
V1   = sqrt((x1^2)+(y1^22));
x   = real(V);
y   = imag(V);
I1   = sqrt((x^2)+(y^2));
P    = (x1*x)+(y1*y);
//pf    = P/(V1*I);        //power factor of the load circuit in lagging
pf      = P/(V1*I1);            //power factor of the load circuit in cos(phi)

//result
mprintf("power factor of the load circuit = %3.3f lagging",pf);
