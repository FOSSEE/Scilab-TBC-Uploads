//Problem 21.18: The shaft torque of a diesel motor driving a 100 V d.c. shunt-wound generator is 25 Nm. The armature current of the generator is 16 A at this value of torque. If the shunt field regulator is adjusted so that the flux is reduced by 15%, the torque increases to 35 Nm. Determine the armature current at this new value of torque.

//initializing the variables:
T1 = 25; // in Nm
T2 = 35; // in Nm
Ia1 = 16; // in Amperes
V = 100; // in Volts
x = 0.15;

//calculation:
//the shaft torque T of a generator is proportional to (phi*Ia), where Phi is the flux and Ia is the armature current. Thus, T = k*Phi*Ia, where k is a constant.
//The torque at flux phi1 and armature current Ia1 is T1 = k*Phi1*Ia1.
//similarly T2 = k*Phi2*Ia2
Ia2 = T2*Ia1/(0.85*T1)

printf("\n\n Result \n\n")
printf("\n armature current at the new value of torque is %.2f A ",Ia2)