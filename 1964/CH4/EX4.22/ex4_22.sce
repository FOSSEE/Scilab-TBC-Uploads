//Chapter-4, Example 4.22, Page 147
//=============================================================================
clc
clear
funcprot(0)
function [polar] = r2p(x,y)//function to convert rectangular to polar
 polar = ones(1,2)
 polar(1) = sqrt ((x ^2) +(y^2))
 polar(2) = atan (y/x)
 polar(2) =(polar (2)*180)/%pi
 endfunction
 function [ rect ] = p2r(r,theta)//function to convert polar to rectangular
 rect = ones(1 ,2)
 theta =( theta *%pi) /180
 rect (1)=r* cos(theta)
 rect (2)=r* sin(theta)
 endfunction
//v=230*sin(100*%pi*t)
//CALCULATIONS
R=100;//resistance in ohms
L=319;//inductance in mH
Xl=(100*%pi*L*10^-3);//inductive reactance in ohms
Z=R+((%i)*(Xl));//impedance in ohms
Z=r2p(R,Xl);//impedance in polar form
disp(Z);
Z1=p2r(Z(1),Z(2));
disp(Z1);
//i=230/1.414*sin(100*%3.14*t-45)=1.626*sin(100*%3.14*t-45)
i=(1.626/(sqrt(2)));//rms current in A
P=(i)^2*R;//power taken by the coil in W
mprintf("power taken by the coil is %3.1f W",P);
//note:here direct functions for converson are not available and hence we defined user defined functions for polar to rect and rect to polar conversions
//=================================END OF PROGRAM=======================================================================================================
