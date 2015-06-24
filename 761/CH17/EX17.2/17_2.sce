clc;
//page no 624
//prob no. 17.2
//Determination of group velo for waveguide in example 7.1
f=5*10^9;//freq.in Hz
fc=3.75*10^9;//cut-off freq from eg.7.1
c=3*10^8;//speed of light in m/s
vg=c*sqrt(1-(fc/f)^2);
disp('m/s',vg,'The group velo.is');