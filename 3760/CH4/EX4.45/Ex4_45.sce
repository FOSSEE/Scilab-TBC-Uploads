clc;
clc;
v=200; // rated voltage of dc shunt motor
ra=0.1; // armature resistance
n=1000; // running speed of motor
ia=50; // armature current at n=1000 rpm
re=0.1; // reduction in field flux
ia2=(1/(1-re))*ia; // armature current when transients are over
Ea1=v-ia2*ra; // counter EMF when transients are over
// with sudden increase from 0.9*f to f (f=flux), counter EMF rises to
Ea2=Ea1*(1/(1-re));
i=(v-Ea2)/ra;
printf('Armature current is %f A',i);
disp('Since armature current is negative, machine acts as a generator. Speed reduces till counter EMF becomes less than supply voltage,so that motor action takes place and torque balance is obtained')
