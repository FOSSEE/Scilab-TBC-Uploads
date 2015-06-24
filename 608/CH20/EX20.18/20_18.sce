//Problem 20.18: A 400 kVA transformer has a primary winding resistance of 0.5 ohm and a secondary winding resistance of 0.001 ohm . The iron loss is 2.5 kW and the primary and secondary voltages are 5 kV and 320 V respectively. If the power factor of the load is 0.85, determine the efficiency of the transformer (a) on full load, and (b) on half load.

//initializing the variables:
S = 400000; // in VA
R1 = 0.5; // in Ohm
R2 = 0.001; // in Ohm
V1 = 5000; // in Volts
V2 = 320; // in Volts
Pi = 2500; // in Watt
pf = 0.85; // power factor

//calculation:
//Rating = 400 kVA = V1*I1 = V2*I2
//Hence primary current
I1 = S/V1
//secondary current
I2 = S/V2
//Total copper loss = I1*I1*R1 + I2*I2*R2,
Pcf = I1*I1*R1 + I2*I2*R2
//On full load, total loss = copper loss + iron loss
Plf = Pcf + Pi
// full-load power output = V2*I2*pf
Pof = S*pf
//Input power at full-load = output power at full-load + losses
PIf = Pof + Plf
//Efficiency = output power/input power = (input power—losses)/input power
//Efficiency = 1 - losses/input power
efff = (1-(Plf/PIf))*100

//Half full-load power output = V*I*pf/2
Poh = S*pf/2
//Copper loss (or I*I*R loss) is proportional to current squared
//Hence the copper loss at half full-load is
Pch = Pcf/(2*2)
//Iron loss = 2500 W (constant)
//Total losses
Plh = Pch + Pi
//Input power at half full-load = output power at half full-load + losses
PIh = Poh + Plh
//efficiency
effh = (1-(Plh/PIh))*100

printf("\n\n Result \n\n")
printf("\n (a)the transformer efficiency at full load is %.2f percent", efff)
printf("\n (b)the transformer efficiency at half full load is %.2f percent", effh)