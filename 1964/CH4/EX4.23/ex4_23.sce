//Chapter-4, Example 4.23, Page 148
//=============================================================================
clc
clear
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
//e1=230*sin(w*t)
//e2=230*sin(w*t*%pi/6)
//CALCULATIONS
E1=p2r(230,0);//impedance in rectangular form
disp(E1);
E2=p2r(230,30);
disp(E2);
E=E1+E2;
E=E/sqrt(2);
E=r2p(E(1),E(2));
disp(E)
Z=r2p(8,6);
disp(Z);
I1=E(1)/Z(1);
disp(I1)
theta=E(2)-Z(2);
disp(theta);
phi=cos(theta*%pi/180)
disp(phi)
P1=(E(1))*(I1)*(phi);//power supplied in Watts
mprintf("Thus Rms current and power supplied are %2.1f A and %f W respectively",I1,P1);
//note here power calculated my vary as we took many decimal values for calculation.Please check the calculations
//note:here direct functions for converson are not available and hence we defined user defined functions for polar to rect and rect to polar conversions
//=================================END OF PROGRAM=======================================================================================================
