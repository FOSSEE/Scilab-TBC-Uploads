clc;
v=400; // rated voltage of motor
pi=5472; // input power 
np=3; // number of phases
xs=10; // synchronous reactance
ef=v; // excitation voltage
vt=v/sqrt(3); // rated per phase voltage
de=round(asind((pi*xs*np)/(np*v^2)));
printf('Load angle is %f degrees\n',de);
// from fig. 5.53, vt=ef(excitation voltage per phase) armature resistance=0 
pf=cosd(de/2);
printf('Power factor is %f lagging\n',pf);
// from fig. 5.53
ia=floor((2*vt*sind(de/2))/xs); 
printf('Armature current is %f A',ia);
