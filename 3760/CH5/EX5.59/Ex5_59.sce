clc;
v=11000; // voltage of infinite bus
po=15*10^6; // output power of alternator
pf=0.8; // operating power factor of synchronous machine
p=130; // percentage increase in excitation EMF
m=3; // number of phases
ia=po/(sqrt(3)*pf*v); // per phase armature current
vb=v/sqrt(3); // per phase bus voltage
//from phasor diagrams in fig 5.117(a) and 5.117(b)
xs=(sqrt(((p/100)*vb)^2-(vb*pf)^2)-(vb*sqrt(1-pf^2)))/ia; // synchronous reactance
printf('Synchronous reactance of machine is %f ohms\n',xs);
de=asind((po*xs)/(m*vb^2));
printf('Load angle of machine before excitation EMF is increased is %f degrees\n',de);
pf=cosd(de/2); 
printf('Power factor of the machine before excitation EMF is increased is %f leading\n',pf);
ia=(2*vb*sind(de/2))/xs;
printf('Armature current of the machine before excitation EMF is increased is %f A',ia);
