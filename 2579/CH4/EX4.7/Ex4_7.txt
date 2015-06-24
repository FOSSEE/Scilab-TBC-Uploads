//Ex:4.7
clc;
clear;
close;
Vc=3*10^10;// the speed of light in m/cm
f=5*10^9;// frequency in Hz
y=Vc/f;// wavelength in cm
hw=9*8;// aperture dimensions in cm
D=(7.5*hw)/y^2;// beamwidth in degree
Ap=(4.5*hw)/y^2;
G=10*log(Ap)/log(10);// gain as a power ratio and in dB
printf("The beamwidth = %d degree", D);
printf("\n The gain as a power ratio and in dB = %f dB", G);