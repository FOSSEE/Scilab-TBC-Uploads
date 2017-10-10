clc;
d=0.28; // air gap diameter
l=0.23; // core length of alternator
spp=4; // slots per pole per phase
b1=0.87; // amplitude of flux density in fundamental harmonic in Tesla
b3=0.24; // amplitude of flux density in third harmonic in Tesla
b5=0.14; // amplitude of flux density in fifth harmonic in Tesla
p=6; // number of poles in alternator
np=3; // number of phases
c=8; // number of conductor per slot
f=50; // frequency of supply
f1=(2*d*l*b1)/p; // flux for fundamental harmonic
f3=(2*d*l*b3)/(p*3); // flux for third harmonic
f5=(2*d*l*b5)/(p*5); // flux for fifth harmonic
ap=180/(spp*np); // slot angular pitch
kd1=sin(((spp*ap)/2)*(%pi/180))/(spp*sin((ap/2)*(%pi/180))); // distribution factor for fundamental harmonic
kd3=sin(((3*spp*ap)/2)*(%pi/180))/(spp*sin(((3*ap)/2)*(%pi/180))); // distribution factor for third harmonic
kd5=sin(((5*spp*ap)/2)*(%pi/180))/(spp*sin(((5*ap)/2)*(%pi/180))); // distribution factor for fifth harmonic
// coil is short pitched by one slot, therefore
e=180/(spp*np); // chording angle
cs1=cos((e/2)*(%pi/180)); // coil span factor for fundamental harmonic 
cs3=cos(((3*e)/2)*(%pi/180)); // coil span factor for third harmonic 
cs5=cos(((5*e)/2)*(%pi/180)); // coil span factor for fifth harmonic
kw1=cs1*kd1; // winding factor for fundamental harmonic
kw3=cs3*kd3; // winding factor for third harmonic
kw5=cs5*kd5; // winding factor for fifth harmonic
ts=spp*np*p; // total number of slots
tt=(ts*c)/2; // total number of turns
nph=tt/np; // series turn per phase
ep1=sqrt(2)*%pi*f*kw1*nph*f1; // emf per phase for fundamental harmonics
ep3=(ep1*kw3*3*f3)/(kw1*f1); // emf per phase for third harmonics
ep5=(ep1*kw5*5*f5)/(kw1*f1); // emf per phase for fifth harmonics
disp('case a(1): star connected alternator');  
ep=sqrt(ep1^2+ep3^2+ep5^2); 
printf('Resultant EMF per phase is %f V\n',ep);
// third frequency line emf doesnot appear in line voltage
el=sqrt(3)*sqrt(ep1^2+ep5^2);
printf('Resultant line voltage is %f V\n',el);
disp('case a(2): Delta connected alternator'); 
// third frequency line emf doesnot appear in line and phase voltage as they are short circuited  by closed delta 
ep=sqrt(ep1^2+ep5^2);
printf('Resultant EMF per phase(also line voltage) is %f V\n',ep);
disp('case b: delta connected alternator ');
rpp=10; // reactance per phase
// emf to due first and third harmonic cancels each other but third harmonic gives rise to circulating current
I=(3*ep3)/(3*np*rpp);
printf('Circulating current is %f A',I);
