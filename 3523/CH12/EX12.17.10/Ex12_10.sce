//Example 10// Ch 12
clc;
clear;
close;
// given data
a=1;//inner thickness of cable in cm
epsilonr1=4.5;
epsilonr2=3.6;
r1=2;//in cm
b=2.65;//in cm
V=53.8;//in kV
Emax1=V/(a*[log(r1)+(epsilonr1/epsilonr2)*log(1.325)]);
printf("max stress in rubber %f kV/cm",Emax1)
Emax2=V/(r1*[((epsilonr2/epsilonr1)*log(r1))+ log(1.325)]);
printf("max stress in paper %f kV/cm",Emax2)



