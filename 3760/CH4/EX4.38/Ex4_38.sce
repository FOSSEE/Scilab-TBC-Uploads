clc;
v=230; // rated voltage of dc motor
p=10000; // rated power of dc motor
rf=115; // field resistance
ra=0.348; // net armature resistance
ifs=v/rf; // shunt field current
ia=(p/v)-ifs; // rated armature current
disp('case a');
rx1=(v/(2*ia))-ra; 
printf('External resistance required at the time of starting is %f ohms\n',rx1);
disp('case b');
Ea1=v-ia*(rx1+ra); // counter emf at stud 1
r2=(v-Ea1)/(2*ia); // resistance when handle is moved to 2nd stud
rx2=r2-ra; // external resistance 
rc=rx1-rx2; 
printf('Resistance that must be cut out in first step is %f ohms\n',rc);
disp('case c');
Ea2=v-ia*rc; // counter emf at stud 2
r3=(v-Ea2)/(2*ia); // resistance when handle is moved to 3rd stud 
rc=rc-r3; 
printf('Resistance that must be cut out in second step is %f ohms\n',rc);
disp('case d');
Ea3=v-ia*rc; // counter emf at stud 3
r4=(v-Ea3)/(2*ia); // resistance when handle is moved to 4th stud 
rc=rc-r4; 
printf('Resistance that must be cut out in third step is %f ohms\n',rc);
disp('Total number of steps is 3');
 
