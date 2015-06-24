//Ex:2.16
clc;
clear;
close;
D=20;// directivity
A=%pi*(D/2)^2;
f=4*10^3;// frequency in MHz
y=300/f;// wavelength in meter
n=0.55;// effeciency
G=(4*%pi*n*A)/y^2;// gain
Gdb=10*log(G)/log(10);// gain in dB
B_W=(70*y/D);// beamwidth of a paraboloidal reflector antenna
printf("The gain = %f dB", Gdb);
printf("\n The beamwidth of a paraboloidal reflector antenna = %f degree", B_W);