//chapter 5
//example 5.20
//Compare minimum uncertainty in the frequency of the photon 
//page 111
clear;
clc;
//given
dt=1E-8; // in sec (average life time)
pi=3.14; // value of pi used in the solution
//calculate
// Since dE*dt>=h/(4*pi)  (uncertainty relation for energy)
// and E=h*v      v is the frequency
// therefore we have dv>=1/(4*pi*dt)
dv=1/(4*pi*dt); // calculation of minimum uncertainty in the frequency
printf('\nThe minimum uncertainty in the frequency of the photon is \tdv=%1.1E sec^-1',dv);
