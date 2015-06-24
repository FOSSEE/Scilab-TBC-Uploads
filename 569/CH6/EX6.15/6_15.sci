// calculating  time constant and value of capacitance
clc;
g=0.501;
f=50;
w=2*%pi*f;
tc=(1-g^2)^0.5/(w*g);
disp(tc,'time constant (s)')
R=10000;
C=(tc/R)*10^6;
disp(C,'capacitance (micro-F)')