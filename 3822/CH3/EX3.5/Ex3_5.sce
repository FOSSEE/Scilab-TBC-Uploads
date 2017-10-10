


//Optoelectronics and Fiber Optics Communication by C.R. Sarkar and D.C. Sarkar
//Example 3.5
//OS = Windows 7
//Scilab version 5.5.2

clc;
clear;

//given
a=4*10^-6;//radius in m
n1=1.5;//core refractive index
delta=0.03;//delta
lamda=0.80*10^-6;//wavelength in m
c=(2*delta)^0.5;//constant value
n2=sqrt((n1^2)-(2*delta*n1^2));
c5=((n1^2)-(n2^2))^1.5;
Rcs=(3*n1^2*lamda)/(4*%pi*c5);//critical radius
mprintf("\n Critical radius is =%.2f um",Rcs*1e6);//multiplication by 1e6 to convert unit to um//the answer vary due to rounding
