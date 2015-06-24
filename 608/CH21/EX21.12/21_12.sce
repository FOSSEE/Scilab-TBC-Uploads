//Problem 21.12: A 10 kW shunt generator having an armature circuit resistance of 0.75 ohm and a field resistance of 125 ohms , generates a terminal voltage of 250 V at full load. Determine the efficiency of the generator at full load, assuming the iron, friction and windage losses amount to 600 W.

//initializing the variables:
Ps = 10000; // in Watt
Pl = 600; // in Watt
Ra = 0.75; // in ohms
Rf = 125; // in ohms
V = 250; // in Volts

//calculation:
//Output power Ps = V*I
//from which, load current I
I = Ps/V
//Field current, If
If = V/Rf
//Armature current
Ia = If + I
//Efficiency,
eff = Ps*100/((V*I) + (Ia*Ia*Ra) + (If*V) + (Pl)) // in Percent

printf("\n\n Result \n\n")
printf("\n Efficiency is %.2f percent ",eff)