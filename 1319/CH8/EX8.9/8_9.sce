// To determine the various parameters of a 3 phase 400V 6 poles Induction Motor

clc;
clear;

f=50;
p=6;
s=3/100;
V=400;

N=120*f/p; // Synchronous speed
Ns=0; // Speed of stator
rf=s*f; // Rotor Frequency
Nr=N*(1-s); // Rotor speed
Nrs=N-Ns; // Speed of Rotor field wrt stator
Nrr=120*rf/6; // Speed of rotor field wrt rotor
Nrmsm=0; // Speed of rotor field wrt stator field

printf('i) The speed of the rotor = %g rpm \n',Nr)
printf('ii) The frequency of rotor current = %g Hz \n',rf)
printf('iii) The Speed of the rotor magnetic field w.r.t the stator = %g rpm \n',Nrs)
printf('iv) The speed of the rotor magnetic field w.r.t the rotor = %g rpm \n',Nrr)
printf('v) The speed of the rotor magnetic field w.r.t the stator magnetic field = %g rpm \n',Nrmsm)
