//chapter-4 page 146 example 4.7
//==============================================================================
clc;
clear;

//For a rectangular waveguide
disp('For a rectangular waveguide the dominant mode is the TE10 mode.TE10 mode can propagate at a lower frequency');
f=9*10^9;//frequency in Hz
wg=4;//guide wavelength in cm
c=3*10^10;//Velocity of Light in cm/sec
disp('For TE10 mode wc=2a');

//CALCULATION
w0=(c/f);//free space wavelength in cm
wc=(w0/sqrt(1-(w0/wg)^2));//Cutoff wavelength for TE10 mode in cm
disp('Free space wavelength w0 in cm is');
disp(w0);
disp('Cutoff wavelength wc in cm is');
disp(wc);
disp('Since wc>w0, the wave propagates');
a=(wc/2);//length of the guide in cm
b=(wc/4);//breadth of the guide in cm

//OUTPUT
mprintf('\nlength of the guide is a=%1.0f cm \nbreadth of the guide is b=%1.1f cm',a,b);

//=========================END OF PROGRAM===============================
