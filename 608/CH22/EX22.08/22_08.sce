//Problem 22.08: The power supplied to a three-phase induction motor is 32 kW and the stator losses are 1200 W. If the slip is 5%, determine (a) the rotor copper loss, (b) the total mechanical power developed by the rotor, (c) the output power of the motor if friction and windage losses are 750 W, and (d) the efficiency of the motor, neglecting rotor iron loss.

//initializing the variables:
Psi = 32000; // in Watts
Psl = 1200; // in Watts
s = 0.05; // slip
Pfl = 750; // in Watts

//calculation:
//Input power to rotor = stator input power - stator losses
Pi =  Psi - Psl
//slip = rotor copper loss/rotor input
Pl = s*Pi
//Total mechanical power developed by the rotor = rotor input power - rotor losses
Pr = Pi - Pl
//Output power of motor = power developed by the rotor - friction and windage losses
Po = Pr - Pfl
//Efficiency of induction motor = (output power/input power)*100
eff = (Po/Psi)*100 // in percent

printf("\n\n Result \n\n")
printf("\n(a) rotor copper loss is %.0f Watt",Pl)
printf("\n(b) Total mechanical power developed by the rotor is %.0f W",Pr)
printf("\n(c) Output power of motor is %.0f Watt",Po)
printf("\n(d) efficiency of induction motor is %.2f percent",eff)