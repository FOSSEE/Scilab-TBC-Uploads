clc;
v=250; // supply voltage
i=50; // current drawn from supply
ic=0.4; // percentage increase in speed
T=1.2; // ratio of final and initial torque
n=1.4;// ratio of final and initial speed
ra=0.5; // armature resistance 
Ea1=v-i*ra; // counter EMF at initial speed
// ia2=(T2/T1)*ia1*k where k=f1/f2 and T1 is initial torque and T2 is final torque now writing Ea2(counter EMF at 1000rpm) in terms of k and finding value of k by solving quadratic equation in k whose  terms are
t1=T*ra*i; 
t2=-v;
t3=n*Ea1;
p=[ t1 t2 t3 ];
k=roots(p);
fr=(1-(1/k(2)))*100; 
printf('Percentage reduction in field flux is %f percent',fr);
