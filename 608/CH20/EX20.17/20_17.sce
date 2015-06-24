//Problem 20.17: Determine the efficiency of the transformer in Problem 20.16 at half full-load and 0.85 power factor.

//initializing the variables:
S = 200000; // in VA
Pc = 1500; // in Watt
Pi = 1000; // in Watt
pf = 0.85; // power factor

//calculation:
//Efficiency = output power/input power = (input power—losses)/input power
//Efficiency = 1 - losses/input power
//Half full-load power output = V*I*pf/2
Po = S*pf/2
//Copper loss (or I*I*R loss) is proportional to current squared
//Hence the copper loss at half full-load is
Pch = Pc/(2*2)
//Iron loss = 1000 W (constant)
//Total losses
Pl = Pch + Pi
//Input power at half full-load = output power at half full-load + losses
PI = Po + Pl
//efficiency
eff = (1-(Pl/PI))*100

printf("\n\n Result \n\n")
printf("\n the transformer efficiency at half full load is %.2f percent", eff)