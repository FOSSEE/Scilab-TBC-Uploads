//Chapter-4, Example 4.21, Page 147
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
//CALCULATIONS
I1=p2r(300,0);
disp(I1);
I2=p2r(350,30);
disp(I2);
I=I1+I2;
disp(I);
i3=r2p(I(1),I(2))
disp(i3);
mprintf("Thus resultant current is 627.9 A and it leads 300 A by 16 degrees")
//note:here direct functions for converson are not available and hence we defined user defined functions for polar to rect and rect to polar conversions
//=================================END OF PROGRAM======================================================================================================

