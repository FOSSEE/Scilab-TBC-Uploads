clc;
e=1.6*10^-19;      //charge
ke=200;            //kinetic energy in eV
KE=ke*e;         //calculating kinetic energy
m=1.67*10^-27;      //mass in kg
disp(KE,"Kinetic Energy in Joule = ");     //displaying result
v=sqrt((2*KE)/m);        //calculating velocity
disp(v,"Velocity in m/sec = ");      //displaying result