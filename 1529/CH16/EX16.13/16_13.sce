//Chapter 16, Problem 13
clc;
eff = 0.8;                  // effficiency
f = 50;                     // in ohm
Pout = 4800;                // in Watt
pf1 = 0.625                 // power factor
pf2 = 0.95                  // power factor
V = 240;                    // in Volts
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
printf("\n\n (a)Current taken by the motor, Im = %.0f A",Im)
printf("\n\n (b)Supply current after p.f. correction, I = %.2f A ",I)
printf("\n\n (c)Magnitude of the capacitor current Ic = %.0f A",Ic)
printf("\n\n (d)Capacitance, C = %.0f μF ",(C/1E-6))
printf("\n\n (d)kvar rating of the capacitor = %.2f kvar ",kvar)
