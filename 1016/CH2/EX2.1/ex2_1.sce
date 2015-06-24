clc;clear;
//Example 2.1

//given values
E=2400;//electric field intensity in V/m
V=90;//potential difference in V
e=1.6*10^-19;//the charge on electron in C
m=9.12*10^-31;//mass of electron in kg

//Calculation
F=e*E;
disp(F,'The force(in N) on electron is');
a=F/m;
disp(a,'Its acceleration (in m/s^2)');
KE=e*V;
disp(KE,'The Kinetic Energy(in J) of particle is');
v=sqrt(2*KE/m);
disp(v,'The velocity(in m/s) of the electron')