clc;
s=24; // number of slots
p=4; // number of poles
ph=60; // phase spread
ap=(p*180)/s; // slot angular pitch
pp=s/p; // pole pitch
printf('Pole pitch is %d slots\n',pp);
printf('slot angular pitch is %d degrees',ap);
disp('using these data, half coil and whole coil single layer concentric windings diagram are drawn');
