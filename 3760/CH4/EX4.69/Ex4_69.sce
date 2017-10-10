clc;
p=10000; // rated power of transformer
n=900; // speed of motor
v=400; // rated voltage of motor
ra=1; // armatyre resistance
rf=400; // field resistance
ne=0.85; // efficiency at rated load 
l=((1/ne)-1)*p; // total losses
disp('case a');
pi=p+l; // power input 
il=pi/v; // line current
ia=il-(v/rf); // armature current
la=ia^2*ra; // armature circuit losses
lf=v*(v/rf); // shunt field losses
wo=l-la-lf; // no load losses
iao=wo/v; // no load current neglecting armature losses at no load
printf('No load armature current is %f A\n',iao);
disp('case b');
Ea1=v-ia*ra; // counter EMF at rated load
il=20; // current drawn by motor
ia=il-(v/rf); // armature current
Ea2=v-ia*ra; // counter EMF at line current of 20 A
n2=(Ea2/Ea1)*n; 
printf('Speed of motor while drawing current of %d A from mains is %f rpm\n',il,ceil(n2));
disp('case c');
k=(Ea1*60)/(2*%pi*n); // constant term in counter EMF formula
T=98.5; // electromagnetic torque
ia=T/k; 
printf('Armature current at given torque is %f A',ceil(ia));
