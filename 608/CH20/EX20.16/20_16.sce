//Problem 20.16: A 200 kVA rated transformer has a full-load copper loss of 1.5 kW and an iron loss of 1 kW. Determine the transformer efficiency at full load and 0.85 power factor.

//initializing the variables:
S = 200000; // in VA
Pc = 1500; // in Watt
Pi = 1000; // in Watt
pf = 0.85; // power factor

//calculation:
//Efficiency = output power/input power = (input power—losses)/input power
//Efficiency = 1 - losses/input power
//Full-load output power = V*I*pf
Po = S*pf
//Total losses
Pl = Pc + Pi
//Input power = output power + losses
PI = Po + Pl
//efficiency
eff = 1-(Pl/PI)

printf("\n\n Result \n\n")
printf("\n the transformer efficiency at full load is %.4f", eff)