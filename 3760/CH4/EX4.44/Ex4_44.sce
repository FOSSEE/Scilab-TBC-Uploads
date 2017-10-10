clc;
v=200; // rated voltage of dc shunt motor
ra=0.1; // armature resistance
n=1000; // running speed of motor
ia=50; // armature current at n=1000 rpm
re=0.1; // reduction in field flux
disp('case a'); 
Ea1=v-ia*ra; // initial counter EMF
Ea2=Ea1*(1-re); // counter EMF after reduced field flux
iam=(v-Ea2)/ra; 
printf('Maximum value of armature current is %f A\n',iam);
T=(iam/ia)*(1-re); 
printf('Torque corresponding to maximum armature current is %f times initial torque\n',T);
disp('case b');
ia2=(1/(1-re))*ia;
printf('Armature current when transients are over is %f A\n',ia2);
Ea2=v-ia2*ra; // counter EMF when transients are over
n2=(Ea2*n)/(Ea1*(1-re));
printf('Ultimate speed after transients are over is %f rpm',ceil(n2));
