clc;clear;
//Example 16.4
//calculation of interatomic spacing

//given values
alpha=30*%pi/180;//Bragg angle in degree
h=1;
k=1;
l=1;
m=1;//order of reflection
x=1.75*10^-10;//wavelength in m

//calculation
d=m*x/(2*sin(alpha));
a=d*sqrt(h^2+k^2+l^2);//in m

disp(a*10^10,'interatomic spacing in armstrong is');
