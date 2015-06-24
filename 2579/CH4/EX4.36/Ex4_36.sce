//Ex:4.36
clc;
clear;
close;
f=5000;// frequency in MHz
y=300/f;// wavelength in m
h=9/100;// height in m
w=8/100;//  width in m
D=(7.5*h*w)/y^2;// beamwidth in degree
Ap=(4.5*h*w)/y^2;
Ap1=10*log(Ap)/log(10);// gain as a power ratio in dB
printf("The beamwidth = %f degree", D);
printf("\n The gain as a power ratio in dB = %f dB", Ap1);