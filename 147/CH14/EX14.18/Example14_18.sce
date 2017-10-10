//No of poles p, frequency of supply f1, slip s
close();
clear;
clc;
p = 4;
f1 = 60;//Hz
s = 0.03;
ns = 120*f1/p;
n = (1-s)*ns;
f2 = s*f1;
nr = 120*f2/p;
ns_dash = nr+n;
nr_s = ns_dash - ns;
mprintf('Rotor speed = %0.0f rpm\nRotor current frequency = %0.1f Hz \nSpeed of rotor''s rotating magnetic field with respect to the stator frame = %0.0f rpm\nSpeed of rotor''s rotating magnetic field with respect to the stator''s magnetic field = %0.0f ',n,f2,ns_dash,nr_s);