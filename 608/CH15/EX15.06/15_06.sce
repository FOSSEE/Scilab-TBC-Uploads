//Problem 15.06: In a series R–L circuit the p.d. across the resistance R is 12 V and the p.d. across the inductance L is 5 V. Find the supply voltage and the phase angle between current and voltage.

//initializing the variables:
Vr = 12; // in volts
Vl = 5; // in volts

//calculation:
V = (Vr^2 + Vl^2)^0.5
phi = atan(Vl/Vr)
phid = phi*180/%pi

printf("\n\n Result \n\n") 
printf("\n supply voltage V = %.0f V, phase angle between current and voltage is %.2f° ",V, phid)