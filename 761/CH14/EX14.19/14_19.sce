clc;
//page no 503
//prob no. 14.19
//2 adjacent minima on slotted are 23cm apart with velo factor=95%
L=23*10^-2;vf=0.95;c=3*10^8;//Velo. of light in m/s
//Determination of wavelength
wav=2*L;//Minima are seperated by one-half wavelength
disp('cm',wav*100,'The wavelength is');
//Determination of freq.
f=(vf*c)/wav;//vp=vf*c
disp('MHz',f/10^6,'The freq is'); 