//chapter-4 page 148 example 4.10
//==============================================================================
clc;
clear;

//For an air filled circular Waveguide in the dominant mode
c=3*10^10;//Velocity of Light in cm/sec
disp('For an air filled circular Waveguide TE11 is the dominant mode ie propagated');
wc=10;//cutoff wave length in cm

//CALCULATION
r=((1.841*wc)/(2*(%pi)));//radius of circular Waveguide in cm
A=(%pi)*r^2;//Cross sectional area of the guide in sq.cms
fc=(c/wc)/10^9;//Cutoff frequency for TE11 mode in GHz
disp('Cutoff frequency for TE11 mode in GHz is');
disp(fc);
disp('Frequncy above 3GHz can be propagated through the waveguide');

//OUTPUT
mprintf('\nCross sectional area of the guide is A=%2.2f sq.cms',A);

//=========================END OF PROGRAM===============================
