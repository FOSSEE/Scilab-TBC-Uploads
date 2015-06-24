//Example 15.59
// transfer function of signal flow graph
clear;clc;
xdel(winsid());

k1=1;
k2=5;
k3=5;
s=%s;
// From the graph the transfer function is
T=(k3*k1)/(s^3+s^2+(k3*k1)+(k1*k2*s^2)+5)
// substitutins "s=0"in the equation of T
// and differentiating and simplifying the equation
// the following value of T will appear
T1=1/(1+k1)

