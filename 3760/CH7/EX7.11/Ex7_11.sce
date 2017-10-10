clc;
disp('a');
s=24; // total number of slots 
p=4; // number of poles
np=3; // number of phases
ph=60; // phase spread
// given armature has double layer winding and full pitch coil span
v=(p*180)/s;
printf('Slot angular pitch is %d degrees\n',v);
disp('Number of adjacent slots in one phase belt is');
disp(ph/v);
cs=s/p; 
printf('Coil span is %d slots\n',cs);
disp('Using this data winding table for the three phases is shown in Ex7.11')
disp('d');
sp=s/(p*np); // slots per pole per phase
disp('Distribution factor is');
disp(sind(ph/2)/(sp*sind(v/2)));
