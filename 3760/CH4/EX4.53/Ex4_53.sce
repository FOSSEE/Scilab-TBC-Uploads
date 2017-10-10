clc;
v=230; // rated voltage of motor 
p=6; // number of poles 
f=4*10^-3; // flux per pole in Wb/A
T=20; // load torque
n=800; // speed at T=20 N-m
a=2; // for wave connected conductors number of parallel path 
z=432; // number of conductors
r=1; // total resistance of motor
// it is given that T=kn^2, therefore 
k=T/n^2; // proportionality of constant
r1=(f*z*p)/(60*a); // ratio of back EMF to product of speed and armature current
t=(r1*60)/(2*%pi); // ratio of full load torque to square of armature current
// also Ea(back EMf)=v-ia*ra and r1=Ea/(n*ia) compairing both we get ia=v/(1+r1*n);
// Also k*n2^2=t*ia^2 , in this expression putting value of ia and solving quadratic equation in n2
t1=sqrt(k)*r1;
t2=sqrt(k);
t3=-sqrt(t)*v;
p=[ t1 t2 t3 ];
n2=roots(p);
printf('Speed of motor is %f rpm\n',n2(2));
ia=v/(1+r1*n2(2));
printf('Armature current when motor is connected to rated supply is %f A',ia);
