// Exa 5.4

clc;
clear;

// Given

// The Lissajous pattern
Y2 = 2.5; // slope of the major axis(in div)
Y1 = 1.2; // slope of the vertical axis(in div)

// Solution

printf(' The phase shift V2 and V1 can be given as sin(Theta) = Y1/Y2 \n  -where V1 and V2 are voltages applied to X and Y axis respectively \n ');

Theta = asind(Y1/Y2) ;
printf(' Since, the ellipse is lying in the I and the III quadrant, \n  The angle is theta or 360-theta , i.e, %.2f or %.2f \n',Theta,360-Theta);
