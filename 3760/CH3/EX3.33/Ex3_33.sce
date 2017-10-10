clc;
d=0.8; // diameter of rotor machine
l=0.5; // length of rotor machine
g=0.005; // air gap length
as=10000; // peak current density for stator
ar=6000; // peak current density for rotor
t=60; // torque angle
disp('case a'); 
p=2; // number of pole
uo=4*%pi*10^-7; // free space permeability
Fs=(as*d)/p; // peak stator mmf per pole
Fr=(ar*d)/p; // peak rotor mmf per pole
Te=(p*uo*%pi*d*l*Fs*Fr*sind(t))/(4*g);
printf('Torque for given number of poles is %f Nm\n',Te);
disp('case b'); 
p=6; // number of pole
uo=4*%pi*10^-7; // free space permeability
Fs=(as*d)/p; // peak stator mmf per pole
Fr=(ar*d)/p; // peak rotor mmf per pole
Te=(p*uo*%pi*d*l*Fs*Fr*sind(t))/(4*g);
printf('Torque for given number of poles is %f Nm\n',Te);
