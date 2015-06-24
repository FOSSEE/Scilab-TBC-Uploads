//Example 2.9 //No. of lines in grating
clc;
clear;
//given data
w1=54D-6;// first wavelength used in cm
w2=405D-7;// second wavelength used in cm
//first wavelength  order superimposed on next higher order
theta=%pi/6;//angle of diffraction in radian
c=(w1*w2/(w1-w2))/sin(theta);//grating element
N=1/c;// no. of lines per cm
N=round(N);// N should be integer
disp(N,"No. of lines in grating")

