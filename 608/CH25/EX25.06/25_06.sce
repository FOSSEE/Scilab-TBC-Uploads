//Problem 25.06: An a.c. network consists of a coil, of inductance 79.58 mH and resistance 18 ohm, in parallel with a capacitor of capacitance 64.96 μF. If the supply voltage is 250/_0° V at 50 Hz, determine (a) the total equivalent circuit impedance, (b) the supply current, (c) the circuit phase angle, (d) the current in the coil, and (e) the current in the capacitor.

//initializing the variables:
L = 0.07958; // in Henry
R = 18; // in ohm
C = 64.96E-6; // in Farad
rv = 250; // in volts
thetav = 0; // in degrees
f = 50; // in Hz

//calculation:
//Inductive reactance
XL = 2*%pi*f*L
//capacitive reactance
Xc = 1/(2*%pi*f*C)
//impedance of the coil,
Zcoil = R + %i*XL
//impedance presented by the capacitor,
Zc = -1*%i*Xc
//Total equivalent circuit impedance,
ZT = Zcoil*Zc/(Zcoil + Zc)
//voltage
V = rv*cos(thetav*%pi/180) + %i*rv*sin(thetav*%pi/180)
//current, I
I = V/ZT
thetai = atan(imag(I)/real(I))*180/%pi
phi = thetav - thetai
if (phi>0) then
    a = "lagging"
else
    a = "leading"
end
//Current in the coil, ICOIL
Icoil = V/Zcoil
//Current in the capacitor, IC
Ic = V/Zc

printf("\n\n Result \n\n")
printf("\n (a)the circuit impedance is %.2f + (%.2f)i ohm ",real(ZT), imag(ZT))
printf("\n (b)supply current, I is %.2f + (%.2f)i A ",real(I), imag(I))
printf("\n (c)circuit phase relative is %s by %.2f° ",a,abs(phi))
printf("\n (d)current in coil, Icoil is %.2f + (%.2f)i A ",real(Icoil), imag(Icoil))
printf("\n (e)current in capacitor, Ic is %.2f + (%.2f)i A ",real(Ic), imag(Ic))