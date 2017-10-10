clc;
v=48; // supply voltage
n=2400; // speed of permanent magnet DC motor
i=0.8; // current drawn by motor
ra=1; // armature resistance of motor
disp('case a');
Ea=v-i*ra; // generated EMF
l=Ea*i;
printf('No load rotational losses is %f W\n',l);
disp('case b');
km=(Ea*60)/(2*%pi*n); // speed voltage constant
v=40; // supply voltage
n1=1600; // speed at supply voltage
Ea=(km*2*%pi*n1)/60; // generated EMF
ia=(v-Ea)/ra; // new armature current
pe=Ea*ia; // Electromagnetic power developed 
po=pe-l;
printf('Output power is %f W\n',po);
disp('case c');
v=20; // supply voltage
// when motor stalls Ea=0 
ia=v/ra; // stall current
T=km*ia;
printf('Stall torque is %f Nm',T);
