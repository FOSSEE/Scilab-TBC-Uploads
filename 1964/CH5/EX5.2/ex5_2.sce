//Chapter-5, Example 5.2, Page 157
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
 rect = ones(1,2)
 theta =( theta *%pi) /180
 rect (1)=r* cos(theta)
 rect (2)=r* sin(theta)
 endfunction
//CALCULATIONS
//for subdivision 1
I1=p2r(10,60);
I2=p2r(8,-45);
I3=I1+I2;
disp(I3);
I4=r2p(I3(1),I3(2));
disp(I4)
//for subdivision 2
I5=r2p(5,4);
I6=r2p(-4,-6);
I7(1)=(I5(1))*(I6(1));
I7(2)=(I5(2)+I6(2));
I7(2)=I7(2)-180;
disp(I7);
//for subdivision 3
I8=r2p(-2,-5);
I9=r2p(5,7);
I10(1)=I8(1)/I9(1);
I10(2)=I8(2)-I9(2);
I10(2)=I10(2)-180
disp(I10);
//note:here direct functions for converson are not available and hence we defined user defined functions for polar to rect and rect to polar conversions
//=================================END OF PROGRAM======================================================================================================

