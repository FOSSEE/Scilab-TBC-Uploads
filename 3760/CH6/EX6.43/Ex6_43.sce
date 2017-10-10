clc;
p=10000; // rated power of SCIM
v=420; // rated voltage of SCIM
p=4; // number of poles
f=50; // frequency of SCIM
// results of blocked  rotor test
vb=210; // applied voltage
ib=20; // applied current
pb=5000; // power dissipated
l=300; // stator core loss
rs=0.6; // dc stator resistance
m=3; // number of phases
R=(rs*3)/2; // per phase stator resistance
Rs=1.2*R; // Effective stator resistance per phase
pi=pb*(v/vb)^2; // power input at rated voltage during block rotor test
is=ib*(v/vb); // stator current at rated voltage during block rotor test
pg=pi-m*(is/sqrt(3))^2*Rs-l; // air gap power
ws=(4*%pi*f)/p; 
printf('synchronous speed is %f rad/sec\n',ws);
T=pg/ws;
printf('Starting torque is %f Nm',T);
