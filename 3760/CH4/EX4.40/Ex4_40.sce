clc;
v=200; // rated voltage of shunt motor
i=22; // rated current of dc shunt motor
n1=1000; // speed at which motor is running
rf=100; // field resistance
ra=0.1; // armature resistance
n2=800; // reduced speed at which motor is to run
iF=v/rf; // field current
ia=i-iF; // armature current
disp('case a');
// load torque is independent of speed
Ea1=v-ia*ra; // counter EMF at 1000 rpm
rg=(v-ia*ra-(n2*Ea1)/n1)/ia; 
printf('Additional resistance inserted in armature circuit is %f ohms\n',rg);
printf('Loss in additional resistance is %f W\n',ia^2*rg);
disp('case b');
// load torque is directly proportional to speed
ia2=(n2/n1)*ia; // armature current at 800 rpm
rg=(v-ia2*ra-(n2*Ea1)/n1)/ia2; 
printf('Additional resistance inserted in armature circuit is %f ohms\n',rg);
printf('Loss in additional resistance is %f W\n',ia2^2*rg);
disp('case c');
// load torque varies as the square of speed
ia2=(n2/n1)^2*ia; // armature current at 800 rpm
rg=(v-ia2*ra-(n2*Ea1)/n1)/ia2; 
printf('Additional resistance inserted in armature circuit is %f ohms\n',rg);
printf('Loss in additional resistance is %f W\n',ia2^2*rg);
disp('case d');
// load torque varies as the cube of speed
ia2=(n2/n1)^3*ia; // armature current at 800 rpm
rg=(v-ia2*ra-(n2*Ea1)/n1)/ia2; 
printf('Additional resistance inserted in armature circuit is %f ohms\n',rg);
printf('Loss in additional resistance is %f W\n',ia2^2*rg);
