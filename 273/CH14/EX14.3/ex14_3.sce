clc;clear;
//Example 14.3
//calculation of coherence length,bandwidth and line width

//given values
c=3*10^8;//velocity of light in m/s
t=.1*10^-9;//timedivision in s
l=6238*10^-10;//wavelength in m

//calculation
x=c*t;
disp(x,'coherence length (in m) is');
d=1/t;
disp(d,'bandwidth (in Hz) is');
y=l^2*d/c;//line width in m
disp(y*10^10,'line width(in armstrong )is');