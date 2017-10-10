clc;
v=250; // rated voltage of dc shunt motor
ra=0.5; // armature resistance
rf=250; // field resistance
n1=600; // speed of motor
i=21; // current drawn by motor when n=600 rpm
re=250; // additional resistance in field circuit
if1=v/rf; // field current
ia=i-if1; // armature current
Ea1=v-ia*ra; // counter EMF at n=600 rpm
if2=v/(rf+re); // field current after addition of external resistance 
ia2=ia*(if1/if2); // armature current after addition of external resistance 
Ea2=v-ia2*ra; // counter EMF at new speed
n2=(n1*Ea2*if1)/(Ea1*if2);
printf('New speed of motor is %f rpm',n2);
