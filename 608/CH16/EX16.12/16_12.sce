//Problem 16.12: A motor has an output of 4.8 kW, an efficiency of 80% and a power factor of 0.625 lagging when operated from a 240 V, 50 Hz supply. It is required to improve the power factor to 0.95 lagging by connecting a capacitor in parallel with the motor. Determine (a) the current taken by the motor, (b) the supply current after power factor correction, (c) the current taken by the capacitor, (d) the capacitance of the capacitor, and (e) the kvar rating of the capacitor.

//initializing the variables:
Pout = 4800; // in Watt
eff = 0.8;// effficiency
f = 50; // in ohm
V = 240; // in Volts
pf1 = 0.625// power factor
pf2 = 0.95// power factor

//calculation:
Pin = Pout/eff
Im = Pin/(V*pf1)
phi1 = acos(pf1)
phi1d = phi1*180/%pi
//When a capacitor C is connected in parallel with the motor a current Ic flows which leads V by 90°.
phi2 = acos(pf2)
phi2d = phi2*180/%pi
Imh = Im*cos(phi1)
//Ih = I*cos(phi2)
Ih = Imh
I = Ih/cos(phi2)
Imv = Im*sin(phi1)
Iv = I*sin(phi2)
Ic = Imv - Iv
C = Ic/(2*%pi*f*V)
kvar = V*Ic/1000

printf("\n\n Result \n\n")
printf("\n (a)current taken by the motor, Im = %.0f A",Im)
printf("\n (b)supply current after p.f. correction, I = %.2f A ",I)
printf("\n (c)magnitude of the capacitor current Ic = %.0f A",Ic)
printf("\n (d)capacitance, C = %.0f μF ",(C/1E-6))
printf("\n (d)kvar rating of the capacitor = %.2f kvar ",kvar)