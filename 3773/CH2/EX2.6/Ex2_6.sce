//Chapter 2: Antenna Basics
//Example 2-7.2
clc;
clear;

//Variable Initialization
theta_hp = 90
phi_hp = 90

//Calculation
X=[0 0;%pi %pi;%pi 0];
Y=[0 0;0 %pi;%pi %pi];
function z = f(x,y), z=sin(x)*sin(x)*sin(x)*sin(y)*sin(y),endfunction
[I,err]=int2d(X,Y,f)                 //Exact Directivity(No unit)
direct_e=4*%pi/I        //Exact Directivity(Unitless)
direct_apprx=41253.0/(theta_hp * phi_hp)           //Approximate Directivity(Unitless)
db_diff=10*log10(direct_e/direct_apprx)             //Difference(dB)

//Result
mprintf("The exact directivity is %.1f",direct_e)
mprintf("\nThe approximate directivity is %.1f",direct_apprx)
mprintf("\nThe decibel difference is %.1f dB",db_diff)
