clc;
p=3000; //  power of amplidyne
v=300; // voltage of amplidyne
w=200; // angular velocity of amplidyne
rf=50; // field resistance
ra=5; // armature resistance
rc=1; // compensating winding resistance
kqf=250; 
kdq=100; 
kqd=80; // voltage constants
A=(kdq*kqf)/(ra*rf); // voltage amplification factor
id=p/v; // rated current
vf=(v+id*(ra+rc))/A; // field voltage
ifl=vf/rf; // field current
pk=(v*id)/(vf*ifl); // power gain
printf('Field current is %f A\n',ifl);
printf('Power gain at rated output is %f \n',pk);
// when compensation is zero
vf=(v+id*(((kdq*kqd)/ra)+ra))/A; // field voltage
ifl=vf/rf; 
printf('Field current at zero compensation is %f A\n',ifl);
pk=(v*id)/(vf*ifl); // power gain
printf('Power gain at rated output at zero compensation is %f \n',pk);
