//Problem 21.22: A 220 V, d.c. shunt-wound motor runs at 800 rev/min and the armature current is 30 A. The armature circuit resistance is 0.4 ohm. Determine (a) the maximum value of armature current if the flux is suddenly reduced by 10% and (b) the steady state value of the armature current at the new value of flux, assuming the shaft torque of the motor remains constant.

//initializing the variables:
Ia1 = 30; // in Amperes
Ra = 0.4; // in ohm
n = 800/60; // in Rev/sec
V = 220; // in Volts
x= 0.1;

//calculation:
//For a d.c. shunt-wound motor, E = V - (Ia*Ra),Hence initial generated e.m.f.,
E1 =  V - (Ia1*Ra)
//The generated e.m.f. is also such that E proportional to (Phi*n) so at the instant the flux is reduced, the speed has not had time to change, and
E = E1*(1-x)
//Hence, the voltage drop due to the armature resistance is
Vd = V - E
//The instantaneous value of the current is
Ia = Vd/Ra
//T proportional to (Phi*Ia), since the torque is constant,
//Phi1*Ia1 = Phi2*Ia2,  The flux 8 is reduced by 10%, hence
Phi2 = (1-x)*Phi1
Ia2 = Phi1*Ia1/Phi2

printf("\n\n Result \n\n")
printf("\n (a)instantaneous value of the current %.0f A ",Ia)
printf("\n (b)steady state value of armature current, %.2f A ",Ia2)