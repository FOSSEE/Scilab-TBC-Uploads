clc;
P=60000; // rated power of 3-phase induction motor
p=4; // number of poles
f=50; // frequency
po=3000; // no load losses
i=0.3; // ratio of rated current to rated voltage when motor is prevented from rotating
pi=4000; // power input when motor is prevented from rotating
pr=0.3; //ratio of mechanical losses to no load losses
pm=pr*po; // mechanical losses
lsc1=po-pm; // stator core loss
lsc2=pi/2; // stator copper loss=rotor copper loss
disp('case a');
pg=P+pm+lsc2; // air gap power
s=lsc2/pg;
printf('Slip at rated load is %f\n',s);
disp('case b');
pim=pi/i^2; // power input to motor during blocked rotor test
pg=pim-lsc1-lsc2; // air gap power
ws=(4*%pi*f)/p; // synchronous speed
T=pg/ws;
printf('Starting torque at rated applied voltage is %f Nm\n',T);
