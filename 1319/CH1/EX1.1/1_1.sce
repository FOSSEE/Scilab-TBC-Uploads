// To calculate frequency, instantaneous voltage and time of a voltage wave

clc;
clear;

// The volatage eqaution is v= 0.02 sin (4000t + 30(degress)).


Vm=0.02;

deff('a=vol(b)','a=Vm*sind(((4000*b)*(180/%pi))+30)'); // Function for voltage equation

t=320*(10^-6);

w=4000; // angular frequency

// General expression for voltage is given by V=Vm sin ()(2*pi*f*t)+theta)
// Comparing both the eqautions we get 2*pi*f=4000

f=w/(2*%pi);

v=vol(t);

// 360degress is equal to 1/f s.

//Refer the diagram with this code to understand better. 
// 30degress is

t30=30/(f*360);

disp('Hz',f,'The frequency of the voltage wave =')
disp('V',v,'The instantaneous voltage at t= 320 micro seconds =')

disp('s',t30,'The time represented by 30 degrees phase difference =')

