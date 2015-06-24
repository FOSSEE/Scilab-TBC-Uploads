clc;
V=12;     //potential diff in volt
Q=15;     //charge per time in Coulomb/sec
t=3600;   //time (seconds in an hour)
P=V*Q;    //calculating power in Watt
W=P*t;    //work done in Joule
disp(P,"Power in Watt = ");    //displaying result
disp(W,"Work done in 1 hr in Joule = ");     //displaying result