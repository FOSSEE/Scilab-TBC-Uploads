clc;
m=0.934;         //v=(v/c)^2 (given)
v=2.9*10^8;      //velocity in m/sec
t0=2.2*10^-6;    //initial velocity in m/sec
t=t0/sqrt(1-m);     //calculating t using t=t0/sqrt(1-(v/c)^2)
disp(t,"Time in sec = ");      //displaying result