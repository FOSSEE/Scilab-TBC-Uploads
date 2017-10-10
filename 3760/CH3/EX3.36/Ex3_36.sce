clc;
np=3; // number of phases
p=6; // number of poles
f=50; // frequency of alternator
e=415; // open circuit emf;
s=36; // number of slots in armature
t=4; // number of turns per coil
g=0.18; // air gap diameter
l=0.4; // core length
G=0.002; // gap length
T=42; // number of turns in field winding
kf=0.96; // winding factor
uo=4*%pi*10^-7; // free space permeability
disp('case a');
nph=(s*t)/np; // series turn per phase
spp=s/(p*np); // slots per pole per phase
v=180/p; // slot angular pitch
kd=sind((spp*v)/2)/(spp*sind(v/2)); // distribution factor
Flu=e/(sqrt(2)*sqrt(3)*%pi*f*nph*kd); // flux per pole
B=(p*Flu*2)/(4*l*g); 
printf('Peak value of fundamental flux density wave is %f T\n',B);
disp('case b');
Fl=(G*B)/uo; // peak fundamental field mmf wave
printf('Peak value of fundamental mmf wave is %f AT/pole\n',Fl);
If=(%pi*Fl*p)/(4*kf*T);
printf('DC field current is %f A\n',If);
disp('case c');
Te=114; // given torque
Ta=146; // torque angle
Fm=floor((Te*4*G)/(p*uo*%pi*g*l*Fl*sind(Ta)));
printf('Peak value of fundamental armature mmf is %f AT/pole\n',Fm);
Fr=sqrt(Fl^2+Fm^2+2*Fl*Fm*cosd(Ta));
printf('Resultant mmf per pole is %f AT/pole\n',Fr); 
disp('case d') 
ia=(Fm*2*%pi*p)/(12*kd*nph*sqrt(2)); 
printf('RMS value of armature current is %f A\n',ia);
ns=1000; // speed in rpm
wm=(2*%pi*ns)/60; // angular speed in rps
pf=(Te*wm)/(sqrt(3)*e*ia);
printf('Power factor is %f lagging',pf); 
