// SAMPLE PROBLEM 3/9
clc;clear;funcprot(0);
// Given data
h=200;// The altitude in mi
R=3959;// mi
g=32.234;// The acceleration due to gravity in ft/sec^2

// Calculation
// SigmaF_n=ma_n;
v=(R*5280)*sqrt(g/((R+h)*5280));// ft/sec
printf("\nThe velocity required for the spacecraft,v=%5.0f ft/sec",v);
