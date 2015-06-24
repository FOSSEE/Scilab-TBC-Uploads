clc;clear;
//Example 5.2

//given values
f=880*10^3;//frequency in Hz
P=10*10^3;//Power in W
h=6.625*10^-34;//Plank's constant

//calculation
E=h*f;
n=P/E;
disp(n,'The number of photons emitted per second are')