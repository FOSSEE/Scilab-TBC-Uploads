clc;
p=6; // number of poles in alternator
s=42; // number of slots in alternator
f=0.012; // flux per pole
t=8; // number of turns in full pitch coil
F=50; // frequency of alternator
disp('case a'); 
np=2; // number of phases
spp=42/(p*np); // slots per pole per phase
// spp is not an integer, the 2-phase winding is a fractional slot winding, therefore Sk is given by
Sk=spp*2; 
v=90; // phase spread for 2-phase winding
kd=sind(v/2)/(Sk*sind(v/(2*Sk))); // distribution factor
kw=kd; // winding factor as kp=1
nph=(s*t)/np; // per phase series turn
eph=sqrt(2)*F*%pi*kw*nph*f;
el=sqrt(2)*eph;
printf('Phase emf is %f V\n',eph);
printf('Line emf is %f V\n ',el);
disp('case b');
np=3; // number of phases
v=60; // phase spraed for 3-phase winding  
kd=sind(v/2)/(Sk*sind(v/(2*Sk))); // distribution factor
kw=kd; // winding factor as kp=1
nph=(s*t)/np; // per phase series turn
eph=sqrt(2)*F*%pi*kw*nph*f;
el=sqrt(3)*eph;
printf('Phase emf is %f V\n',eph);
printf('Line emf is %f V\n ',el);
