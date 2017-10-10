// Example 1// Ch 3
clc;
clear;
close;
// given data
R=8314; // gas constant in J/kg.mol.K
T=300; // temperature 27 deg C, 27+293=300K
M=32; // oxygen is diatomic
v = sqrt(3*R*(T/M));
printf("speed of oxygen molecule %f m/s",v) 
// Note: Value of R is given wrong in book 
// So answer in the book is wrong
