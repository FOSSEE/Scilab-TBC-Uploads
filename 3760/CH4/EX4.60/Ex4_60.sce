clc;
p=4000; // rated power of separately excited dc series motor
v=230; // rated voltage of motor
n=1000; // rated speed of motor
e=260; // ac voltage supplied to motor through converter
i=2; // current drawn at no load
no=1100; // speed at no load
ra=0.5; // armature resistance
vd=2; // voltage drop in thyristor
de=30; // firing angle delay
ia=20; // rated armature current
k=((((2*sqrt(2)*e)/%pi)-(i*ra)-vd)*60)/(2*%pi*no); // conatant term in formula of back EMf
disp('case a');
printf('Motor torque is %f Nm\n',k*ia);
disp('case b');
wm=((((2*sqrt(2)*e*cosd(de))/%pi)-vd)/k)-((ra*ia)/k);
printf('Motor speed is %f rpm',ceil((wm*60)/(2*%pi)));
