//Chapter 23, Problem 12
clc;
V = 415;                  // in Volts
Psl = 650;                // in Watt
pf = 0.87;                // power factor
Pm = 11770;               // watts from part (d), Problem 22.10
Pcl = 490.35;            // watts, Rotor copper loss, from part (b), Problem 22.11

//Stator input power
P1 = Pm + Pcl + Psl

Po = 11000              // watts, Net power output, from part (d), Problem 22.10
//efficiency = (output/input) *100
eff = (Po/P1)*100      // in percent

//Power input, P1 = (3^0.5)*VL*IL*cos(phi)
// pf = cos(phi)
//supply current, IL
I = P1/((3^0.5)*V*pf)
printf("\n\n(a) Stator input power is %.2f kW",P1/1000)
printf("\n\n(b) Efficiency is %.2f percent",eff)
printf("\n\n(c) Supply current is %.2f A",I)
