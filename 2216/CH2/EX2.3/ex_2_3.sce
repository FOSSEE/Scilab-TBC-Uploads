//Example 2.3 // pulse broadning
clc;
clear;
close;
format('v',6)
h=0.85;//WAVELENGTH IN MICRO METER
y=0.035;//spectral width
c=0.021;//constant
cl=3;//speed of light in m/s
dtl=(y/cl)*c;//
disp(dtl*10^4,"pulse broadning  in ns km^-1")
