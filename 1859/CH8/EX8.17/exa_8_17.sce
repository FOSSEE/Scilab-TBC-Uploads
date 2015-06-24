// Exa 8.17
clc;
clear;
close;
// Given data
f= 20;// in MHz
f=f*10^6;// in Hz
toh= 1/f;// in sec
toh=toh*10^9;// in ns
// For one cycle occupying 4 horizontal divisions,
MTD= toh/4;// Minimum time/division in ns/division
// Using the 10 times magnifier to provide MTD
MTD_setting= 10*MTD;// minimum time/division setting in ns/division
disp(MTD_setting,"Minimum time/division setting in ns/division")
