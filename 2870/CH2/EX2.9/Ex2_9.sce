clc;clear;
//Example 2.9

//given values
m=900;
v1=0;
v2=80/3.6;//converting km/h into m/s
t=20;

//calculation
Wa=m*(v2^2-v1^2)/2/1000;
Wavg=Wa/t;
disp(Wavg,'the average power in kW')
