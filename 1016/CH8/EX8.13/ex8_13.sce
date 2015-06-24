clc;clear;
//Example 8.13

//given data
W=3*10^-10;//wavelength in m
D=40;//angle in degree
n=1;

//calculation
d=n*W/(2*sind(D));
disp((d/10^-10),'spacing in AU')
a=2*d;
v=a^3;
disp(v,'the volumne in m^3 is')