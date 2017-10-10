clc;
disp('case a'); 
s=54; // number of slots in stator,3 phase
p=6; // number of poles
spp=s/(3*p); // slots per pole per phase
v=(p*180)/s; // slot angular pitch
k1=sin(((spp*v)/2)*(%pi/180))/(spp*sin((v/2)*(%pi/180))); // fundamental harmonics
k3=sin(((3*spp*v)/2)*(%pi/180))/(spp*sin(((3*v)/2)*(%pi/180))); // third harmonic
k5=sin(((5*spp*v)/2)*(%pi/180))/(spp*sin(((5*v)/2)*(%pi/180))); // fifth harmonic
printf('First harmonic component is %f\n',k1);
printf('Third harmonic component is %f\n',k3);
printf('Fifth harmonic component is %f\n',k5);
disp('case b');
s=48; // number of slots in stator,3 phase
p=6; // number of poles
spp=s/(3*p); // slots per pole per phase
sk=spp*3; 
v=(p*180)/s; // slot angular pitch
ps=spp*v; // phase spread
k1=sin(((ps)/2)*(%pi/180))/(sk*sin(((ps)/(sk*2))*(%pi/180))); // fundamental harmonics
k3=sin(((3*ps)/2)*(%pi/180))/(sk*sin(((3*ps)/(sk*2))*(%pi/180))); // third harmonic
k5=sin(((5*ps)/2)*(%pi/180))/(sk*sin(((5*ps)/(sk*2))*(%pi/180))); // fifth harmonic
printf('First harmonic component is %f\n',k1);
printf('Third harmonic component is %f\n',k3);
printf('Fifth harmonic component is %f\n',k5);
