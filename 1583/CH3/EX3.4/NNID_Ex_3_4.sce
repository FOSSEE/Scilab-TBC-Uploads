clc
//Chapter 3:Network noise and intermodulation distortion
//example 3.4 page no 81
//given
k=1.37*10^-23//boltzmann's onstant
T=290//operating tempreture
B=3*10^3//bandwidth
F=1.779//overall noise factor(from previous ex)
G1=15.9//gain of first stage(from previous ex)
G2=10//gain of second stage(from previous ex)
Ni_Na=F*k*T*B//noise at the input (addition of Ni and Na)
No=G1*G2*(Ni_Na)//the output noise
mprintf('the output noise is %3.2e W',No)
