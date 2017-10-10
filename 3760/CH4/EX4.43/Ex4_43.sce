clc;
v=230; // rated voltage of dc shunt motor
n1=900; // speed at which motor is running 
ia1=2; // armature current at n=900 rpm
ra=0.5; // armature resistance
ia2=20; // armature current at rated load and rated voltage
Ea=v-ia1*ra; // counter EMF at no load
k=(Ea*60)/(2*%pi*n1); // constant term used for calculating back EMF
disp('case a');
rs=2; // resistance in series with armature
rp=3; // resistace in parallel with series combination of rs and ra
A=rp/(rp+rs);
wmo=(1/k)*(A*v-ia1*(A*rs+ra)); // no-load speed
wml=(1/k)*(A*v-ia2*(A*rs+ra)); // full-load speed
sr=((wmo-wml)/wml)*100; // percent speed regulation
printf('Speed regulation for first case is %f percent\n',sr);
disp('case b');
rs=3; // resistance in series with armature
wmo=(1/k)*(v-ia1*(rs+ra)); // no-load speed
wml=(1/k)*(v-ia2*(rs+ra)); // full-load speed
sr=((wmo-wml)/wml)*100; // percent speed regulation
printf('Speed regulation for second case is %f percent\n',sr);
