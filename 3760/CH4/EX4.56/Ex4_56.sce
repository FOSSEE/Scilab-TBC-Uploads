clc;
v=230; // rated voltage of dc series motor
n=1500; // speed at rated output
i=20; // current drawn at rated output
ra=0.3; // armature resistance
rf=0.2; // field resistance
disp('case a');
// At starting Ea=0, therefore 
re=(v/i)-(ra+rf);
printf('External resistance to be added in motor armature circuit to develop rated torque is %f ohms\n',re);
disp('case b');
n2=1000; // speed at rated torque has to be developed
Ea2=(n2/n)*(v-i*(ra+rf)); // counter EMF at n=1000 rpm
re=(v-Ea2-i*(ra+rf))/i;
printf('External resistance to be added in motor armature circuit to develop rated torque is %f ohms\n',re);
