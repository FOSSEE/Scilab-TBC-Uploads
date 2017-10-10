clc;
v=415; // rated voltage of motor
f=50; // frequency of motor
ef=520; // line to line excitation emf
p=6; // number of poles
xs=2; // per phase synchronous reactance
t=220; // torque developed
vt=v/sqrt(3); // rated per phase voltage
eft=ef/sqrt(3); // per phase excitation emf
ws=(4*%pi*f)/p; // synchronous speed
de=asind((t*ws*xs)/(3*vt*eft)); //  load angle
ia=(sqrt(vt^2+eft^2-2*eft*vt*cosd(de)))/xs; //  from phasor diagram(fig 5.48),armature current
pf=(ef*sind(de))/(xs*ia*sqrt(3));
printf('Current drawn from supply is %f A\n',ia);
printf('Power factor is %f leading',pf);
