//===========================================================================
//chapter 11 example 7

clc;
clear all;

//variable declaration
R1          = 1.0;      //resistace in Ω
V1           = 0.8-%i*0.75;     //voltage drop across the resistance in volt
V2           = 1.2+%i*0.3;     //voltage across the coil in volt

//calculations
I       = V1/R1;        //current through coil in A
x       = (atan(imag(V1)/real(V1)))*180/%pi;
y       = (atan(imag(V2)/real(V2)))*180/%pi;
phi     = y-x;
a       =sqrt(((real(V2))^2)+((imag(V2))^2));
b       =sqrt(((real(I))^2)+((imag(I))^2));
V3      = a*cos(phi*%pi/180);          //resistive drop the coil in V
P       = a*b*cos(phi*%pi/180);         //power loss in the coil in W


//result
mprintf("iron loss in the coil =%3.3f watt",P);
