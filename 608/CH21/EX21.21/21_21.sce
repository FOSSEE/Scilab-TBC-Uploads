//Problem 21.21: A 200 V, d.c. shunt-wound motor has an armature resistance of 0.4 ohm and at a certain load has an armature current of 30 A and runs at 1350 rev/min. If the load on the shaft of the motor is increased so that the armature current increases to 45 A, determine the speed of the motor, assuming the flux remains constant.

//initializing the variables:
Ia1 = 30; // in Amperes
Ia2 = 45; // in Amperes
Ra = 0.4; // in ohm
n1 = 1350/60; // in Rev/sec
V = 200; // in Volts

//calculation:
//The relationship E proportional to (Phi*n) applies to both generators and motors. For a motor,
//E = V - (Ia*Ra)
E1 =  V - (Ia1*Ra)
E2 =  V - (Ia2*Ra)
//The relationship, E1/E2 = Phi1*n1/Phi2*n2,  applies to both generators and motors. Since the flux is constant, Phi1 = Phi2
Phi2 = Phi1
n2 = E2*Phi1*n1/(Phi2*E1)

printf("\n\n Result \n\n")
printf("\n the speed of the motor is %.2f rev/sec ",n2)