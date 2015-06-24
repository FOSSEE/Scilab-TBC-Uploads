//Exa 4.3
clc;
clear;
close;
f=6 //frequency in GHz
f=6*10^9 //frequency in Hz
c=3*10^8 //speed of light in m/s
l=10 // array length in meter
lambda=c/f //wavelength in meter
// formula : BWFN = 2*lambda/l
BWFN = 2*(lambda/l) // band width in radians
disp(BWFN,"null-to-null Beamwidth of broad side array in radians:")
D=2*(l/lambda) // directivity
disp(D,"Directivity:")
