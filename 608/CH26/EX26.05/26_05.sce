//Problem 26.05:The circuit shown in Figure 26.9 dissipates an active power of 400 Wand has a power factor of 0.766 lagging. Determine (a) the apparent power, (b) the reactive power, (c) the value and phase of current I, and (d) the value of impedance Z.

//initializing the variables:
Pa = 400; // in Watts
rv = 100; // in volts
thetav = 30; // in degrees
R = 4; // in ohm
pf = 0.766; // power factor

//calculation:
V = rv*cos(thetav*%pi/180) + %i*rv*sin(thetav*%pi/180)
//magnitude of apparent power,S = V*I
S = Pa/pf
phi = acos(pf)
theta = phi*180/%pi // in degrees
//Reactive power Q
Q = S*sin(phi)
//magnitude of current
Imag = S/rv
thetai = thetav - theta
I = Imag*cos(thetai*%pi/180) + %i*Imag*sin(thetai*%pi/180)
//Total circuit impedance ZT
ZT = V/I
//impedance Z
Z = ZT - R

printf("\n\n Result \n\n")
printf("\n (a)apparent power is %.2f VA ",S)
printf("\n (b)reactive power is %.2f var ",Q)
printf("\n (c)the current flowing and Circuit phase angle is %.2f/_%.0f° A ",Imag,thetai)
printf("\n (d)impedance, Z is %.2f + (%.2f)i ohm ",real(Z), imag(Z))