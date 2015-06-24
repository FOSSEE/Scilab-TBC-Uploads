//developed in windows XP operating system
//platform Scilab 5.4.1
clc;clear all;
//example 9.2
//calculation of resistivity of the specimen

//given data
tm=30//time (in minute)
ts=20//time(in second)
Vn=1000//voltage(in V) to which the condenser was charged
V=500//voltage(in V) fall to
C=0.1*10^-6//capacitance(in Farad)
d=10//diameter(in cm) of the electrodes
th=2*10^-1//thickness(in cm) of the specimen

//calculation
t=(tm*60)+ts
R=t/(C*log(Vn/V))//resistance
r=d/2//radius of the electrodes
rho=(%pi*r^2*R)/th//volume resistivity

printf('The resistivity of the specimen is %3.3e ohmcm',rho)
