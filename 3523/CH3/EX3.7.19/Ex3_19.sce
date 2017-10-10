//Example 19// Ch 3
clc;
clear;
close;
// given data
a = 9003;//constant in m-1kPa-1
B = 256584;//in V/m.kPa
p = 0.5;//in kPa
M = 1/(a*p);//mean free path in meters
printf("mean free path of electron in nitrogen %e m",M)
Vi = B/a; //ionization potential of nitrogen
printf("ionization potential of nitrogen %f V",Vi)
