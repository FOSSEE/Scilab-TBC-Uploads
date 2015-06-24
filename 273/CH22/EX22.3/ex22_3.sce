clc;clear;
//Example 22.3
//calculation of temp at which there is  max critical field

//given values

Tc=7.26;//critical temp in K
Hc=8*10^5;//max critical magnetic field at T in A/m
H=4*10^4;// subjected magnetic field at in A/m

//calculation
T=Tc*(sqrt(1-H/Hc));
disp(T,'max temp for superconductivity in K is');
