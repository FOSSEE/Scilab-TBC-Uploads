//Example 7.3

clear;

clc;

fL1=1;

fH1=1*10^3;

fL2=fH1;

fH2=10*10^3;

fL3=fH2;

//fH3=infinity

enw=20*10^(-9);

fce=100;

Eno1=enw*sqrt((fce*log(fH1/fL1))+fH1-fL1);

eno=enw/fL2;

Eno2=sqrt(integrate("(eno*f)^2",'f',fL2,fH2));

f0=100*10^3;

enw3=200*10^(-9);

Eno3=enw3*sqrt((1.57*f0)-fL3);

Eno=sqrt((Eno1^2)+(Eno2^2)+(Eno3^2));

printf("Estimated rms noise voltage=%.1f uV",Eno*10^6);