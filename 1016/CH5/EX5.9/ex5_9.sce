clc;clear;
//Example 5.9

//given data
v=7*10^5;//maximum speed in m/sec
f=8*10^14;//frequency in Hz
h=6.625*10^-34;//Plank's constant
c=3*10^8;//speed of light in m/s
m=9.12*10^-31;//mass of electron in kg

//calulations
E=0.5*m*v*v;
fo=f-(E/h);
disp(fo,'the threshold frequency in Hz is')