clc;
vr=0.4; // voltage applied during blocked rotor test as a fraction of rated voltage
ir=2.5; // line current during blocked rotor test as a fraction of full load current
tr=0.3; // starting torque as a fraction of rated torque
is=1.5; // starting current as a fraction of full load current
isc=ir/vr; // short circuit current at rated load
x=sqrt(is/isc); // starting current as a fraction of short circuit current at rated load
T=(x/vr)^2*tr; 
printf('Starting torque is %f percent of full load torque',T*100);
