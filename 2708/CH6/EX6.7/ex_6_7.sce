//Example 6.7 // Equilibrium position time 
clc;
clear;
//given data :
r=exp(2);//ratio of amplitude
Q=2D3;//quality factor
v=240;// frequency of fork in cycles/s
w=2*%pi*v;//angular frequency in rad/sec
T=Q/w;// relaxation time in sec
t=2*T*log(r);//time for ne amplitude
disp(t,"time to become for new amplitude in sec")
