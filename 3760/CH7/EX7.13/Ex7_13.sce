clc;
np=3; // number of phase
sp=9; // slots per pole
zs=4; // conductors per slot
f=0.8; // coil span as a fraction of pole pitch
ph=60; // phase spread
v=180/sp; // slot angular pitch
disp('Number of adjacent slots belonging to any phase is ');
disp(ph/v);
printf('Pole pitch is %f slots\n',sp);
c=floor(0.8*sp);
printf('Coil span is of %f slots\n',c);
disp('Using this data, winding table is shown in Ex7.13');
t=(sp*zs*4)/2; // total turns in machine
spp=sp/np; // slots per pole per phase
kd=sind(ph/2)/(spp*sind(v/2)); // distribution factor
cp=c*v; // coil span in degrees
e=180-cp; // chording angle
kp=cosd(e/2); // coil span factor
kw=kd*kp; // winding factor
tp=(t*kw)/np; 
printf('Number of effective turns per phase is %f',tp);
