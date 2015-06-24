//Problem 21.24: A 320 V shunt motor takes a total current of 80 A and runs at 1000 rev/min. If the iron, friction and windage losses amount to 1.5 kW, the shunt field resistance is 40 ohm and the armature resistance is 0.2 ohm , determine the overall efficiency of the motor.

//initializing the variables:
I = 80; // in Amperes
C = 1500; // in Watt
Rf = 40; // in ohms
Ra = 0.2; // in ohm
n = 1000/60; // in Rev/sec
V = 320; // in Volts

//calculation:
//Field current, If
If = V/Rf
//Armature current Ia
Ia = I - If
//Efficiency =((V*I - Ia*Ia*Ra - If*V - C)/(V*I))*100%
eff = ((V*I - (Ia*Ia*Ra) - (If*V) - C)/(V*I))*100 // in percent

printf("\n\n Result \n\n")
printf("\n efficiency is %.1f",eff)