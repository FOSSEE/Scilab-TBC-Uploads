clc;
v=230; // rated voltage of dc shunt motor
ra=0.4; // armature circuit resistance
rf=115; // field resistance
n1=800; // initial speed 
n2=1000; // final speed
ia1=20; // armature current at n=800 rpm
// torque at both speed is same therefore f1*ia1=f2*ia2 where f=field flux therefore
Ea1=v-ia1*ra; // counter EMF at 800rpm
// ia2=ia1*k where k=f1/f2 now writing Ea2(counter EMF at 1000rpm) in terms of k and finding value of k by solving quadratic equation in k whose terms are
t1=ia1*ra*n1;
t2=-v*n1;
t3=Ea1*n2;
p=[ t1 t2 t3];
k=roots(p);
if1=v/rf; // initial field current
if2=if1/k(2); // final field current correponding to n=1000rpm
rs=v/if2; // new shunt field circuit resistance
re=rs-rf;
printf('Resistance that must be inserted in shunt field circuit is %f ohms\n',floor(re));   
