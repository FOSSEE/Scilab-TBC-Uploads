//Example 7.1(c)

clear;

clc;

fL=0.1;

fH=1*10^6;

enw=20*10^(-9);

fce=200;

En=enw*sqrt((fce*log(fH/fL))+fH-fL);

printf("Estimated RMS input voltage=%.1f uV",En*10^6);