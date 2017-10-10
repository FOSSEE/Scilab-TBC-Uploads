clc;
f=50; // frequency of alternator
B=1; // peak flux density
t=360; // total turns
v=60; // phase spread
pi=0.6; // pole pitch
l=0.8; // stator length
cs=180; // coil span in electrical degrees
nph=t/3; // series turn per phase
Bp=(4*B*cosd(v/2))/%pi; // fundamental value of peak flux density 
F=(2*l*pi*Bp)/%pi; // Fundamental air-gap flux per pole
kd=sind(v/2)/((v/2)*(%pi/180)); // distribution factor 
kw=kd; // winding factor , as kp=1
eph=sqrt(2)*%pi*f*F*kw*nph; 
printf('RMS value of fundamental emf per phase is %f V',eph);
