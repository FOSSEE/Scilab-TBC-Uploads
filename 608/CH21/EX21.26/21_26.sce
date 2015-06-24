//Problem 21.26: A 200 V d.c. motor develops a shaft torque of 15 Nm at 1200 rev/min. If the efficiency is 80%, determine the current supplied to the motor.

//initializing the variables:
T = 15; // in Nm
n = 1200/60; // in rev/sec
eff = 0.8;
V = 200; // in Volts

//calculation:
//The efficiency of a motor = (output power/input power)*100 %
//The output power of a motor is the power available to do work at its shaft and is given by Tw or T proportional to (2*pi*n) watts, where T is the torque in Nm and n is the speed of rotation in rev/s. The input power is the electrical power in watts supplied to the motor, i.e. VI watts.
//Thus for a motor, efficiency =(T*2*pi*n/(V*I))%
I = T*2*%pi*n/(V*eff)

printf("\n\n Result \n\n")
printf("\n current supplied, I is %.1f A",I)