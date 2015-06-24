//Problem 22.12: For the induction motor in problems 22.10 and 22.11, if the stator losses are 650 W, determine (a) the power input at full load, (b) the efficiency of the motor at full load and (c) the current taken from the supply at full load, if the motor runs at a power factor of 0.87 lagging.

//initializing the variables:
V = 415; // in Volts
Psl = 650; // in Watt
pf = 0.87; // power factor

//calculation:
Pm = 11770; // watts from part (d), Problem 22.10
Pcl = 490.35; // watts, Rotor copper loss, from part (b), Problem 22.11
//Stator input power
P1 = Pm + Pcl + Psl
Po = 11000 // watts, Net power output, from part (d), Problem 22.10
//efficiency = (output/input) *100
eff = (Po/P1)*100 // in percent
//Power input, P1 = (3^0.5)*VL*IL*cos(phi)
// pf = cos(phi)
//supply current, IL
I = P1/((3^0.5)*V*pf)

printf("\n\n Result \n\n")
printf("\n(aStator input power is %.2E W",P1)
printf("\n(b)efficiency is %.2f percent",eff)
printf("\n(c)supply current is %.2f A",I)