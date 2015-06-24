//Page Number: 448
//Example 9.2
clc;
//Given
fc=5D+9; //Hz
Em=2D+7; //V/m
vs=4D+3; //ms/s
Xc=1; //ohm

//Maximum allowable power
Pm=((Em*vs)^2)/(((2*%pi*fc)^2)*Xc);
disp('W',Pm,'Maximum allowable power:');
