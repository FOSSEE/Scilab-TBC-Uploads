clc;
p=10000; // rated power of motor
v=400; // rated voltage of motor
n=0.87; // full load efficiency
pf=0.85; // power factor
ir=5; // ratio of starting current to full load current
tr=1.5; // ratio of starting torque to full load torque
disp('case a');
vt=v/sqrt(tr);
printf('Voltage applied to motor terminal is %f V\n',vt);
disp('case b');
ifl=p/(sqrt(3)*v*pf*n); // full load current
il=(ir*vt*ifl)/v; 
printf('Current drawn by motor is %f A\n',il);
disp('case c');
i=(vt/v)*il; 
printf('Line current drawn from supply mains is %f A',i);
