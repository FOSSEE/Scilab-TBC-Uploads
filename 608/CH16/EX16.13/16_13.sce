//Problem 16.13: A 250 V, 50 Hz single-phase supply feeds the following loads (i) incandescent lamps taking a current of 10 A at unity power factor, (ii) fluorescent lamps taking 8 A at a power factor of 0.7 lagging, (iii) a 3 kVA motor operating at full load and at a power factor of 0.8 lagging and (iv) a static capacitor. Determine, for the lamps and motor, (a) the total current, (b) the overall power factor and (c) the total power. (d) Find the value of the static capacitor to improve the overall power factor to 0.975 lagging.

//initializing the variables:
S = 3000; // in VA
f = 50; // in ohm
V = 250; // in Volts
Iil = 10; // in Amperes
Ifl = 8; // in Amperes
pfil = 1// power factor
pffl = 0.7// power factor
pfm = 0.8// power factor
pf0 = 0.975// power factor

//calculation:
phiil = acos(pfil)
phiild = phiil*180/%pi
phifl = acos(pffl)
phifld = phifl*180/%pi
phim = acos(pfm)
phimd = phim*180/%pi
phi0 = acos(pf0)
phi0d = phi0*180/%pi
Im = S/V
Ih = Iil*cos(phiil) + Ifl*cos(phifl) + Im*cos(phim)
Iv = Iil*sin(phiil) - Ifl*sin(phifl) - Im*sin(phim)
Il = (Ih^2 + Iv^2)^0.5
phi = atan(abs(Iv)/Ih)
phid = phi*180/%pi
pf = cos(phi)
P = V*Il*pf
I = Il*cos(phi)/cos(phi0)
Ic = Il*sin(phi) - I*sin(phi0)
C = Ic/(2*%pi*f*V)

printf("\n\n Result \n\n")
printf("\n (a)total current, Il = %.2f A",Il)
printf("\n (b)Power factor = %.3f",pf)
printf("\n (c)Total power, P = %.3f Watt",P)
printf("\n (d)capacitance, C = %.2E F ",C)