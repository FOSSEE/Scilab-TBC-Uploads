//Ex:4.45
clc;
clear;
close;
f=8*10^3;// frequency in MHz
y=300/f;// wavelength in m
A=8*4/100^2;// Area in m^2
D=(7.5*A)/y^2;// directivity of the horn antenna
Ap=(4.5*A)/y^2;// power gain
Ap1=10*log(Ap)/log(10);// power gain in dB
printf("The directivity of the horn antenna = %f degree", D);
printf("\n The power gain = %f", Ap);
printf("\n The power gain in dB = %f dB", Ap1);