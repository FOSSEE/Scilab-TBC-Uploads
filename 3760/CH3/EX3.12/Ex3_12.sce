clc;
spp=3; // slots per pole per phase
np=3; // number of phases
cs=8; // coil span
fp=0.20; // fraction of third harmonic in flux density wave in air gap
sp=spp*np; // slots per pole
v=180/sp; // slot angular pitch
kd1=sin(((spp*v)/2)*(%pi/180))/(spp*sin((v/2)*(%pi/180))); // distribution factor
// for a coil span of 8 slots the coil is short pitched by one slot 
e=v; // chording angle
kp1=cos((e/2)*(%pi/180)); // coil span factor
kw1=kp1*kd1; // winding factor
kd3=sin(((3*spp*v)/2)*(%pi/180))/(spp*sin(((v*3)/2)*(%pi/180))); // distribution factor for third harmonic
kp3=cos(((3*e)/2)*(%pi/180)); // coil span factor for third harmonic
kw3=kd3*kp3; //  winding factor for third harmonic
er=(kw3/kw1)*fp; // ratio of third harmonic emf to fundamental emf 
ep=sqrt(1+er^2); // ratio of net emf to fundamental emf
pi=((ep-1)/1)*100; 
printf('Percentage increase in per phase rms emf is %f percent',pi); 
