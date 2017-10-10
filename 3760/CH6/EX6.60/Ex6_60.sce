clc;
f=50; // frequency 
p=10; // number of poles
pb=120000; // power dissipated in block rotor test
// stator ohmic losses = rotor ohmic losses
pr=pb/2; // total rotor loss
disp('case a');
ws=(4*%pi*f)/p; // synchronous speed
Ts=pr/ws; 
printf('Starting torque is %f Nm\n',Ts);
disp('case b');
pr=pr/3; // total rotor ohmic loss
Ts=pr/ws; 
printf('Starting torque is %f Nm\n',Ts);
