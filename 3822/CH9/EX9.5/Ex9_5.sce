
//OptoElectronics and Fibre Optics Communication, by C.K Sarkar and B.C Sarkar
//Example 9.5
//OS=Windows 10
////Scilab version Scilab 6.0.0-beta-2(64 bit)
clc;
clear;

//given
A=6.0;//measured output pattern size in cm
D=10.0;//distance between the screen and fibre face in cm

q=(A)^2;
w=4*D^2;
u=sqrt(q+w);
NA=A/u;//numerical aperture
mprintf("The numerical aperture is=%.2f",NA);
