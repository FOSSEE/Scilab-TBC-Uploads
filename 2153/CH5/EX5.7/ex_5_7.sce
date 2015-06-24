// Example 5.7: mobility of electrons
clc, clear
// given :
format('v',8)
e=1.602*10^-19; // in C
m=9.1*10^-31; // in kg
t=10^-14; // time in sec
mu=(e*t)/m;
disp(mu,"mobility of electrons,mu(m^2/volts.sec) = ")
