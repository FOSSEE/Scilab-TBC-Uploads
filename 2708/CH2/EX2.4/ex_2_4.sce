//Example 2.4 // Angular width & linear width of central maxima
clc;
clear;
//given data :
w=589D-9;// wavelength of light used in m
D=1;// screen is placed at distance in m
a=.1D-3;//slit width in m
theta=asin(w/a);//half angular width in radian
angle=2*theta;// angular width in radian
disp(angle,"Angular width of central maxima in radian")
y=D*angle;// linear width of central maxima in m
y=y*100;// to convert in cm
disp(y,"linear width of central maxima in cm")
