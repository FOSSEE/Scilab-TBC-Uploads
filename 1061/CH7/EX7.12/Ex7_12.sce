//Ex:7.12
clc;
clear;
close;
V=2.50;// normalised frequency
n1=1.5;// core refractive index
a=4.5*10^-6;// core radius in m
NA=0.2;// numerical aperture
y=3*10^-6;// lateral misalignment in m
w=a*((0.65+1.62*(V)^-1.5+2.88*(V)^-6)/2^0.5);// normalised spot size in m
T1=2.17*(y/w)^2;// Loss due to lateral offset in dB
x=(%pi/180)*w;
Ta=2.17*((x*n1*V)/(a*NA))^2;// loss due to angular misalignment in dB
T=T1+Ta;// total insertion loss in dB
printf("The total insertion loss  =%f dB", T);
printf("\n The answer is wrong in the textbook");