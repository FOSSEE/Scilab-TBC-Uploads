//Example 5.4.4 page 5.15

clc;
clear;
Ts= 10*10^-9;
Tn=9*10^-9;
Tc=2*10^-9;
Td=3*10^-9;
BW= 6*10^6;
Tsyst= 1.1*sqrt(Ts^2+(5*Tn)^2+(5*Tc)^2+Td^2);
Tsyst=Tsyst*10^9;//converting in ns for displying...
Tsyst_max = 0.35/BW;
Tsyst_max=Tsyst_max*10^9;//converting in ns for displying...
printf("Rise system of the system is %.2f ns",Tsyst)
printf("\n\nMaximum Rise system of the system is %.2f ns",Tsyst_max)
printf("\n\nSpecified components give a system rise time which is\n adequate for the bandwidth and distance requirements of the optical fibre link.");
