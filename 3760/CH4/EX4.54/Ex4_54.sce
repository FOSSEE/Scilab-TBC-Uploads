clc;
v=230; // rated voltage of dc shunt motor
n=1000; // rated speed of motor
rf=115; // field resistance
ra=0.5; // armature resistance
ia=4; // no load armature current
k=(v-ia*ra)/(2*%pi*n/60); // constant term in formula of back EMF
disp('case a');
t=80; // load torque
ia2=t/k; // armature load current
Ea2=v-ia2*ra; // counter EMF corresponding to load armature current
printf('Armature current for given load is %f A\n',ia2);
n2=(Ea2*60)/(k*2*%pi);
printf('Speed of motor at given load is %f rpm\n',n2);
disp('case b');
pd=8000; // power developed by motor
n3=1250; // speed at power is developed
// determining value of armature current corresponding to power by solving quadratic equation whose terms are
t1=ra;
t2=-v;
t3=pd;
p=[ t1 t2 t3];
ia3=roots(p);
Ea3=v-ia3(2)*ra; // counter EMF for load armature current
k1=k/(v/rf); // constant term in formula of back EMF for field current = 1 A
ifn=(Ea3*60)/(2*%pi*n3*k1);
rfn=v/ifn;
printf('External resistance that must be inserted in series with field winding is %f ohms',rfn-rf);
