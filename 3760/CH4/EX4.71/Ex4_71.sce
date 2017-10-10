clc;
v=440; // rated voltage of mootor
no=2000; // no load speed
n1=1000; // speed at full load torque
Tl=0.5; // load torque as a fraction of rated torque
n2=1050; // increased speed due to redued torque
// field current is constant so flux is constant
// since torqu gets reduced by half new armature current also gets reduced half i.e ia2=ia1/2;
vd=(v*(n2-n1))/(n2-(n1/2));
printf('Armature voltage drop at full load is %d V',vd); 
