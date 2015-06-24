clc;clear;
//Example 8.17

//given data
D=60;//angle in degree
W=0.254;//wavelength in angstrom

//calcualtion
dW=0.024*(1-cosd(D));
W1=W-dW;
disp(W1,'primary X-ray wavelength in angstrom')