//Chapter 23, Problem 8
clc;
Psi = 32000;                // in Watts
Psl = 1200;                 // in Watts
s = 0.05;                   // slip
Pfl = 750;                  // in Watts
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
printf("\n\n(a) Rotor copper loss is %f kW",Pl/1000)
printf("\n\n(b) Total mechanical power developed by the rotor is %f kW",Pr/1000)
printf("\n\n(c) Output power of motor is %f kW",Po/1000)
printf("\n\n(d) Efficiency of induction motor is %.2f percent",eff)
