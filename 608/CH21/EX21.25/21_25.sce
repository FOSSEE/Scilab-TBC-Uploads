//Problem 21.25: A 250 V series motor draws a current of 40 A. The armature resistance is 0.15 ohm and the field resistance is 0.05ohm . Determine the maximum efficiency of the motor.

//initializing the variables:
I = 40; // in Amperes
Rf = 0.05; // in ohms
Ra = 0.15; // in ohm
V = 250; // in Volts

//calculation:
//However for a series motor, If = 0 and the Ia*Ia*Ra loss needs to be I*I*(Ra + Rf)
//For maximum efficiency I*I*(Ra + Rf) = C
//Efficiency =((V*I -2*Ia*Ia*Ra)/(V*I))*100%
eff = ((V*I - (2*I*I*(Ra + Rf)))/(V*I))*100 // in percent

printf("\n\n Result \n\n")
printf("\n efficiency is %.1f",eff)