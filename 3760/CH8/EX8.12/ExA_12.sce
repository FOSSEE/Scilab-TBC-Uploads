clc;
disp('case a');
// as per the data taken from Ex 1_3
rlg=24.948*10^5; // air gap reluctance for example 1_3(a)
rlc=12.474*10^5; // iron core reluctance for example 1_3(a)
rl=rlg+rlc; // net reluctance
N=500; // Number of turns 
L=(N^2/rl)*1000;
printf('Inductance for case a is %f mH\n',L);
disp('case b');
// as per the data taken from Ex 1_3 part(c)
B=1.254; // calculated flux density
H=3200; // magnetic field intensity obtained from magnetisation curve corresponding to the flux density calculated
uo=4*%pi*10^-7; // free space permeability
ur=B/(H*uo); // relative permeability of iron core
d=2.85*10^-2; // diameter of cross section
A=(%pi*d^2)/4; // area of core
l=0.5; // core length
rlc=l/(ur*uo*A); // reluctance of iron core for part C
rt=rlg+rlc; // net reluctance
L=(N^2/rt)*1000;  
printf('Inductance for case b is %f mH\n',L);
