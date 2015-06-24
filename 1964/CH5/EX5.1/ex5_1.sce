//Chapter-5, Example 5.1, Page 157
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
I1=r2p(7,-5);
disp(I1);
I2=r2p(-9,6);
I2(2)=I2(2)+(180);//this belongs to quadrant 2 and hence 180 degrees should be added
disp(I2);
I3=r2p(-8,-8);
I3(2)=I3(2)+(180);//this belongs to quadrant 3 and hence 180 degrees should be added
disp(I3);
I4=r2p(6,6);
disp(I4);
//note:here direct functions for converson are not available and hence we defined user defined functions for polar to rect and rect to polar conversions
//=================================END OF PROGRAM======================================================================================================

