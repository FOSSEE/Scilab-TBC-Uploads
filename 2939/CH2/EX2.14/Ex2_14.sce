//Ex2_14
clc;

//Given:
mf=1.0;// In T
h=6.6262*10^-34;// in J.s
mn=5.0504*10^-27;//in J/T
gB=5.4;
gN=4.01;
// Solution:
v1=(gB*mn*mf)/(h*10^6);

v2=(gN*mn*mf)/(h*10^6);

printf("\n The ratio of NMR frequencies of B/N is = %f",v1/v2)
