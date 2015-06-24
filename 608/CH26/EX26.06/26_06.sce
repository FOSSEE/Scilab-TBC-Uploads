//Problem 26.06: A 300 kVA transformer is at full load with an overall power factor of 0.70 lagging. The power factor is improved by adding capacitors in parallel with the transformer until the overall power factor becomes 0.90 lagging. Determine the rating (in kilovars) of the capacitors required.

//initializing the variables:
S = 300000; // in VA
pf1 = 0.70; // in power factor
pf2 = 0.90; // in power factor

//calculation:
//active power, P
Pa = S*pf1
phi1 = acos(pf1)
phi1d = phi1*180/%pi
//Reactive power, Q
Q = S*sin(phi1)
phi2 = acos(pf2)
phi2d = phi2*180/%pi
//The capacitor rating needed to improve the power factor to 0.90
//the capacitor rating,
Pr = Q - (Pa*tan(phi2))

printf("\n\n Result \n\n")
printf("\n the rating (in kilovars) of the capacitors is %.1f kvar\n",(Pr/1E3))