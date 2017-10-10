clc;
v=400; // rated voltage of motor
xd=6; // d-axis synchronous reactance
xq=4; // q-axis synchronous reactance
vt=400/sqrt(3); // rated per phase voltage
// As per the theory given in question, phasor diagram is drawn and formula is derived
// After the derived expression, for maximum power load angle=45
de=45;
P=(vt^2/2)*((1/xq)-(1/xd))*sind(2*de); 
printf('Maximum load that can be put on synchronous motor is %f W per phase\n',P); 
printf('Maximum load that can be put on synchronous motor is %f W for 3-phase\n',3*P);
iq=(vt*sind(de))/xq; // q-axis component of armature current
id=(vt*sind(de))/xd; // d-axis component of armature current
ia=sqrt(iq^2+id^2); 
printf('Armature current is %f A\n',ia);
pf=(3*P)/(sqrt(3)*v*ia);
printf('Power factor at maximum power is %f lagging',pf);
