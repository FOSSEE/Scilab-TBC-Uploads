//Example 3_6
clc;
clear;close;

//Given data: 
R=2;//in ohm
XL=10;//ohm
f=4;//kHz
Toff=12;//micro sec

//Solution :
Toff_time=Toff*1.5;//micro sec
theta=2*%pi*f*10^3*Toff_time*10^-6;//radians
Xc=tan(theta)*R+XL;//ohm
C=1/(2*%pi*f*1000*Xc);//F
disp(C,"Value of Capacitance in F : ");
