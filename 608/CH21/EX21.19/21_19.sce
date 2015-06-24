//Problem 21.19: A 100 V d.c. generator supplies a current of 15 A when running at 1500 rev/min. If the torque on the shaft driving the generator is 12 Nm, determine (a) the efficiency of the generator and (b) the power loss in the generator.

//initializing the variables:
T = 12; // in Nm
I = 15; // in Amperes
V = 100; // in Volts
n = 1500/60; // in rev/sec

//calculation:
//the efficiency of a generator = (output power/input power)*100 %
//The output power is the electrical output, i.e. VI watts. The input power to a generator is the mechanical power in the shaft driving the generator, i.e. T*w or T(2*pi*n) watts, where T is the torque in Nm and n is speed of rotation in rev/s. Hence, for a generator 
//efficiency = V*I*100/(T*2*pi*n)  %
eff = V*I*100/(T*2*%pi*n) // in  Percent
//The input power = output power + losses
// hence, T*2*%pi*n = V*I + losses
Pl = T*2*%pi*n - V*I

printf("\n\n Result \n\n")
printf("\n (a) efficiency is %.2f percent ",eff)
printf("\n (b) power loss is %.0f W ",Pl)