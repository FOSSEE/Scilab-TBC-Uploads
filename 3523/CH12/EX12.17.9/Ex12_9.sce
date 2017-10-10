//Example 9// Ch 12
clc;
clear;
close;
// given data
V = -18.2;//in kV
V1 = 45.2;//in kV
V2 = 23;//in kV

E1max = 2.28*(V-V1);//max stress in layers
E2max = 2.12*(V1-V2);//max stress in layers
E3max = 2.06*V2;//max stress in layers

// as E1max=E2max=E3max=Emax
Emax = 2.06*V2;
printf("max stress is %f kV",Emax)
