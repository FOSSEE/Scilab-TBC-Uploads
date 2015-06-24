clc();
clear;
//To calculate cyclotron frequency of of electron
q=1.6*(10^-19);                  //charge of the particle
B=5;                             //magnetic field in T
m=9.1*(10^-31);                  //mass of electron in kg
v=(q*B)/(2*%pi*m)                //cyclotron frequency in Hz
printf("cyclotron frequency of of electron is %e Hz",v);
