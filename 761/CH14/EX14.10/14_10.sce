clc;
//page no 481
//prob no. 14.10
//A series tuned ckt tuned at 1GHz
vf=0.95;c=3*10^8;f=10^9;
vp=vf*c;//determination of propagation velo.
wav=vp/f;//Determination of wavelength 
//Determination of length
L=wav/2;//Since half wavelength section wiil be series resonant
disp('m',L,'The length should be');  