clc;
v=250; // rated voltage of shunt motor
p=15000; // rated power of motor
nm=0.88; // maximumu efficiency of motor
n=700; // speed of motor
rf=100; // resistance of shunt field
i=78; // current drawn by mains
f=0.8; // fraction of rated output being delivered
l=((1/nm)-1)*f*p; // total losses
// at maximum losses constant losses= variable losses
lc=l/2; // constant losses
pi=f*p+l; // input to motor at maximum efficiency
il=pi/v; // input line current
ia=il-(v/rf); // armature current
ra=lc/ia^2; // armature resistance
ia2=i-(v/rf); // armature current at given load 
pi=i*v; // total power input
tl=ia2^2*ra+lc; // total losses
n1=(1-(tl/pi))*100; // efficiency at line current of 75 A
Ea1=v-ia*ra; // counter EMF
Ea2=v-ia2*ra; // counter EMF corresponding to line current of 75 A
// field current is constant so flux is constant
n2=(Ea2/Ea1)*n;
printf('Efficiency at line current of %d A is %f percent\n',i,ceil(n1));
printf('Speed at line current of %d A is %f rpm',i,floor(n2));
