//Example 2.3.3: maximum error
clc;
clear;
close;
//given data :
V1=100;// in volts
V2=200;//in volts
V=V2-V1;
A=.25;//may be ± in %
max_error=(A/100)*V;
disp(max_error,"maximum error(V) = ±")
