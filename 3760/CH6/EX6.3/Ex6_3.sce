
clc;
f=50; //frequency of stator
P=6;
NofO=90; //number of oscillation 
f2=NofO/60; //rotor frequency
s=f2/f; //slip
Ns=(120*f)/P; //synchronous speed
Nr=Ns*(1-s); //rotor speed

mprintf('The rotor speed is %f rpm',Nr);
