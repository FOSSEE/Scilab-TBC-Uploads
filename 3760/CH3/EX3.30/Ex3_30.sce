clc;
p=6; // number of poles in induction motor
f=50; // frequency of motor
d=1.2; // stator bore diameter
// in one revolution peripheral distance of Pi*diameter is transversed
v=(2*f*%pi*d)/p; 
printf('Linear velocity of travelling mmf wave is %f m/sec',v);
