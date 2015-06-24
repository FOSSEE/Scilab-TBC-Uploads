//Problem 20.19: A 500 kVA transformer has a full load copper loss of 4 kW and an iron loss of 2.5 kW. Determine (a) the output kVA at which the efficiency of the transformer is a maximum, and (b) the maximum efficiency, assuming the power factor of the load is 0.75.

//initializing the variables:
S = 500000; // in VA
Pcf = 4000; // in Watt
Pi = 2500; // in Watt
pf = 0.75; // power factor

//calculation:
//Let x be the fraction of full load kVA at which the efficiency is a maximum.
//The corresponding total copper loss = (4 kW)*(x^2)
//At maximum efficiency, copper loss = iron loss Hence
x = (Pi/Pcf)^0.5
//Hence the output kVA at maximum efficiency
So = x*S
//Total loss at maximum efficiency
Pl = 2*Pi
//Output power
Po = So*pf
//Input power = output power + losses
PI = Po + Pl
//Efficiency = output power/input power = (input power—losses)/input power
//Efficiency = 1 - losses/input power
//Maximum efficiency
effm = (1 - Pl/PI)*100

printf("\n\n Result \n\n")
printf("\n the output kVA at maximum efficiency is %.2E VA", So)
printf("\n max. efficiency is %.2f pecent", effm)