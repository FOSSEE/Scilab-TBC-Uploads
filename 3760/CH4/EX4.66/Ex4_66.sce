clc;
// answer is calculated for torque=30 but it is asked for torque=40 i.e why answer varies
p=4; // number of dc series motor
f=4*10^-3; // ratio of flux per pole to armature current
T=40; // torque of fan
n=1000; // speed of motor
a=2; // number of parallel path for waave winding
z=480; // number of conductors
ra=1; // armature resistance
v=230; // supply voltage
re=sqrt((T*2*%pi*a)/(p*z*f*n^2)); // ratio of armature current and new speed
// Ea=vt-ia*ra writing ia in terms of n solving for n (n is new speed)
n2=v/(re+((p*f*z)/(60*a)));
printf('Motor speed is %f rpm\n',n2);
ia=re*n2;
printf('Armature current is %f A',ia);
