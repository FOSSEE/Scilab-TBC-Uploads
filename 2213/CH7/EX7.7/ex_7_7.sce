//Example 7.7: Acceleration, Coasting and Braking periods
clc;
clear;
close;
//given data :
S=1.6;// in km
Va=40;// in km/h
V1=64;// in km/h
alfa=2.0;//in km/p/sec
Beta_c=0.16;// in km/h/sec
Beta=3.2;// in km/h/sec
t1=V1/alfa;// in sec
disp(t1,"Duration of Acceleration,t1(sec) = ")
T=(S*3600)/Va;// in sec
// Formula: T=(V1/alfa)+((V1-V2)/Beta_c)+(V2/Beta)
V2=(t1+(V1/Beta_c)-T)/((1/Beta_c)-(1/Beta));
t2=(V1-V2)/Beta_c;
disp(t2,"Duration of coasting,t2(sec) = ")
t3=V2/Beta;
disp(t3,"Duration of braking,t3(sec) = ")
