//Example 3.6 // voltage at the generating station
clc;
clear;
close;
//given data :
I=75; // current in A
R=0.15; // resistance in ohm
v=220; // voltage in volts
V1=I*R; // voltage drop of the feeder in section AB
V2=I*R; // voltage drop of the feeder in section CD
V_total=V1+V2; // total voltage drop in the lead and return feeder
V=v+V_total;
disp(V,"voltage at the generating station,V(v) = ")
