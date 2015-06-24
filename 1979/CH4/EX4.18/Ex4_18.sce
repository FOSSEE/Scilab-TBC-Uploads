//chapter-4 page 153 example 4.18
//==============================================================================
clc;
clear;

//For a TE10 mode
a=1.5;//Length of an air filled square Waveguide in m
b=1;//breadth of an air filled square Waveguide in cm
c=3*10^10;//Velocity of Light in cm/sec
f=6*10^9;//Impressed Frequency in Hz
er=4;//dielectric constant

//CALCULATION
wc=2*a;//Cutoff wavelength in cm
fc=(c/wc)/10^9;//Cutoff frequency in GHz
disp('Cutoff frequency in GHz is');
disp(fc);
disp('The impressed frequency of 6 GHz is less than the Cutoff frequency and hence the signal will not pass through the guide');
w=(c/f);//Wavelength in cm
disp('Alternatively, the wavelength of the impressed signal in cm is');
disp(w);
wair=w;
disp('which is longer than the cutoff wavelength (3cm) and hence no propagation of the wave');
w1=wair/sqrt(er);//Wavelength in cm
disp('If the waveguide is loaded with dielectric of er=4, then the wavelength in cm is');
disp(w1);
disp('which is lessthan wair');
disp('Now the signal with 6 GHz frequency will pass through the dielectric loaded waveguide');

//=========================END OF PROGRAM===============================
