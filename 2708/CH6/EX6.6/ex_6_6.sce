//Example 6.6 // oscillation time 
clc;
clear;
//given data :
r=10;//ratio of energies 
Q=1D4;//quality factor
v=250;// frequency of fork in cycles/s
w=2*%pi*v;//angular frequency in rad/sec
T=Q/w;// relaxation time in sec
t=T*log(r);// time in sec
disp(t,"time to become new energy in sec")

