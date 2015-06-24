clc;
//page no 86
// prob no 2.9
// refer fig 2.38
//Here we are using a 10MHz crystal, it will be necessar to devide it by a factor to get 10kHz
f_osc = 10*10^6; f_ref=10*10^3;f0_1=540*10^3;f0_2=1700*10^3;
Q=f_osc/f_ref;
// we have to specify the range of values of N. Find N at each and of the tuning range
N1=f0_1/f_ref;
N2=f0_2/f_ref;
disp(N2,'The values of N at high end is',N1,'The values of N at low end is');