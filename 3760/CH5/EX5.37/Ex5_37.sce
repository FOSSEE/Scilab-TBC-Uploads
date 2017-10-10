clc;
vt=3300; // terminal voltage
xs=11; // synchronous reactance per phase
p=8; // number of poles
f=50; // frequency of motor
m=3; // number of phases
// from fig 5.82
// at no load load angle=0 and excitation voltage=terminal voltage
de=0;
s=p/2; // electrical degree equivalent of one mechanical degree in space
es=2*vt*sind(s/2); // synchronizing voltage
is=es/xs;
printf('Synchronizing current in the armature is %f A\n',is);
ps=m*vt*is*cosd(de+s/2);
printf('synchonizing power is %f KW\n',floor(ps/1000));
ws=(2*%pi*120*f)/(60*p);
T=ps/ws;
printf('Synchronizing torque tending to restore rotor to its previous position is %f Nm\n',T);
disp('case b');
ia=30; // armature current
dde=2*(asind((ia*xs)/(2*vt))); // change in load angle in electrical degrees
s=dde*(2/p);
printf('Rotor slips back by %f mechanical degrees',s);
