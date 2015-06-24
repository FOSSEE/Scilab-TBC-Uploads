//chapter-4 page 149 example 4.11
//==============================================================================
clc;
clear;

//For a rectangular waveguide
f=5*10^9;//frequency in Hz
c=3*10^10;//Velocity of Light in cm/sec
a=4;//Length of Rectangular Waveguide in cm
b=3;//Width of Rectangular Waveguide in cm

//CALCULATION
disp('The condition for the wave to propagate along a guide is that wc>w0.');
w0=c/f;//free space wavelength in cm
disp('Free space wavelength w0 in cm is');
disp(w0);
disp('For TE waves, wc=(2ab/sqrt((mb)^2+(na)^2))');
disp('For TE01 waves');
m1=0;
n1=1;
wc1=((2*a*b)/(sqrt((m1*b)^2+(n1*a)^2)));//Cutoff wavelength for TE01 mode in cm
disp('Cutoff wavelength for TE01 mode in cm is');
disp(wc1);
disp('Since wc for TE01=6cm is not greater than w0 TE01,will not propagate for TE01 mode.');
disp('For TE10 waves');
m2=1;
n2=0;
wc2=((2*a*b)/(sqrt((m2*b)^2+(n2*a)^2)));//Cutoff wavelength for TE10 mode in cm
disp('Cutoff wavelength for TE10 mode in cm is');
disp(wc2);
disp('Since wc TE10 > w0 TE10 is a possible mode.');
disp('For TE11 waves');
m3=1;
n3=1;
wc3=((2*a*b)/(sqrt((m3*b)^2+(n3*a)^2)));//Cutoff wavelength for TE11 mode in cm
disp('Cutoff wavelength for TE11 mode in cm is');
disp(wc3);
disp('As wc TE11 < w0 TE11 does not propagate.');

//=========================END OF PROGRAM===============================
