//Chapter 27
clc
//Example 2
//given
m=2 // mass of the object in Kg
k=25 //force constant of spring in N/m
A=0.4 //Amplitude of Simple harmonic oscillation by spring in meters
h=6.63*10^-34//js
//a) Total energy and frequency of SHO calculation
E=(1/2)*k*A^2
f=(1/(2*%pi))*sqrt(k/m)
disp(E,"a) Total energy of Simple harmonic oscillator with given amplitude in Joules is")
disp(f,"   Frequency of oscillation in Hertz is")
//b) Calculation of quantum number for the system
n=E/(h*f)
disp(n,"b) Quantum number for the given macroscopic system is")
//c) Calculation of energy carried away in a quantum charge
delta_E=h*f
disp(delta_E,"c) Energy carried away by a one-quantum charge in joules is")


