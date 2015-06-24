// exa 8.13
clc;
clear;
close;
// Given data
R = 133;// in kohm
R = R *10^3;// in ohm
C = 0.1;// in µF
C = 0.1 * 10^-6;// in F
Vi= 1.5;// in V
t=0:0.1:1;
subplot(2,1,1)
plot(t,Vi);
ylabel("Vi in volts")
xlabel("t")
title("Input voltage");
t= 0:0.1:1;
Vo= -1/(R*C)*t;
subplot(2,1,2)
plot(t,Vo)
xlabel("t");
ylabel("Vo in volts");
title("Output voltage")
