// Implementation of example 3.3
// Basic and Applied Thermodynamics by P.K.Nag
// page 55

clc
clear

p=101.325 // (atmospheric pressure in kN/m^2)
N=10000 // no. of revolutions
T=1.275 // (torque in Nm)
d=0.6 //(diameter in m)
l=0.8 //(distance moved in m)

w1=(2*%pi*T*N)/1000; // work done by stirring device
a=((%pi/4)*d^2);
w2=(p*a)*l; // work done by system
w=(-w1)+w2;
disp("net work transfer")
disp(w)
disp("kJ")
