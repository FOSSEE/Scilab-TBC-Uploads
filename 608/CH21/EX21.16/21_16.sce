//Problem 21.16: Determine the torque developed by a 350 V d.c. motor having an armature resistance of 0.5 ohm and running at 15 rev/s. The armature current is 60 A.

//initializing the variables:
V = 350; // in Volts
Ra = 0.5; // in ohms
n = 15; // in rev/sec
Ia = 60; // in Amperes

//calculation:
//Back e.m.f. E = V - Ia*Ra
E = V - Ia*Ra
//torque T = E*Ia/(2*n*pi)
T = E*Ia/(2*n*%pi)

printf("\n\n Result \n\n")
printf("\n the torque exerted is %.1f Nm ",T)