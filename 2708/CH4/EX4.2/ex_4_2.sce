//Example 4.2 // transverse Coherence length 
clc;
//given data :
theta=32;//angle on slit in second
theta=32*%pi/(60*180);// to convert in radian
w=5D-5;// wavelength of light used in cm
C=w/theta;//coherence length in cm
disp(C,"transverse coherence length in cm")
