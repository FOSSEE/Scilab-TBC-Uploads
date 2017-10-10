//Problem 22.09: The speed of the induction motor of Problem 22.08 is reduced to 35% of its synchronous speed by using external rotor resistance. If the torque and stator losses are unchanged, determine (a) the rotor copper loss, and (b) the efficiency of the motor.

//initializing the variables:
Psi = 32000; // in Watts
Psl = 1200; // in Watts
Pfl = 750; // in Watts
x = 0.35;

//calculation:
//nr = x*ns
//The slip, s
s = ((1 - 0.35)/1)
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
printf("\n(b) efficiency of induction motor is %.2f percent",eff)