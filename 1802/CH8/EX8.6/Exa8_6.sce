//Exa 8.6
clc;
clear;
close;
//given data
CN=0.4;//in uF
V=33;//in KV
VP=V/sqrt(3);//in KV
f=25;//in Hz
//Capacitance between 2 cores for 15 Km length
CN_1=15*CN;//in uF
//Capacitance of each core to neutral
CN=2*CN_1;//in uF
//Charging current per phase
I=2*%pi*f*VP*1000*CN*10^-6;//in Ampere
disp(round(I),"Charging current per phase in Ampere : ");