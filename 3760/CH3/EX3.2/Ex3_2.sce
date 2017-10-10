clc;
n=24; // Number of armature conductor
v=2; // average voltage per conductor
i=5; // current carrying capacity of each conductor
disp('case a');
a=2; // number of parallel path
sc=n/a; // series connected conductor in each path
Ea=sc*v; // output voltage
Ia=i*a; // output current
p=Ea*Ia; // power rating
printf('Generator rating is %f W\n',p);
disp('case b');
a=4; // number of parallel path
sc=n/a; // series connected conductor in each path
Ea=sc*v; // output voltage
Ia=i*a; // output current
p=Ea*Ia; // power rating
printf('Generator rating is %f W\n',p);
disp('case c');
a=6; // number of parallel path
sc=n/a; // series connected conductor in each path
Ea=sc*v; // output voltage
Ia=i*a; // output current
p=Ea*Ia; // power rating
printf('Generator rating is %f W\n',p);
