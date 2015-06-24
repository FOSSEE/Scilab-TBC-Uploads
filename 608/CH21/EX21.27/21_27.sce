//Problem 21.27: A d.c. series motor drives a load at 30 rev/s and takes a current of 10 A when the supply voltage is 400 V. If the total resistance of the motor is 2 ohm and the iron, friction and windage losses amount to 300 W, determine the efficiency of the motor.

//initializing the variables:
R = 2; // in ohm
n = 30; // in rev/sec
I = 10; // in A
C = 300; // in Watt
V = 400; // in Volts

//calculation:
//Efficiency =((V*I - I*I*R - C)/(V*I))*100%
eff = ((V*I - (I*I*R) - C)/(V*I))*100 // in percent

printf("\n\n Result \n\n")
printf("\n efficiency is %.1f percent",eff)