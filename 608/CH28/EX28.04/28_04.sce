//Problem 28.04: A series circuit comprises a 10 ohm resistance, a 5 μF capacitor and a variable inductance L. The supply voltage is 20/_0° volts at a frequency of 318.3 Hz. The inductance is adjusted until the p.d. across the 10 ohm resistance is a maximum. Determine for this condition (a) the value of inductance L, (b) the p.d. across each component and (c) the Q-factor.

//initializing the variables:
R = 10; // in ohms
C = 5e-6; // IN fARADS
rv = 20; //in volts
thetav = 0; // in degrees
f = 318.3; // in Hz

//calculation:
wr = 2*%pi*f
//The maximum voltage across the resistance occurs at resonance when the current is a maximum. At resonance,L = 1/c*wr^2
L = 1/(C*wr^2)
//voltage
V = rv*cos(thetav*%pi/180) + %i*rv*sin(thetav*%pi/180)
//Current at resonance Ir
Ir = V/R
//p.d. across resistance, VR
VR = Ir*R
//inductive reactance, XL
XL = wr*L
//p.d. across inductance, VL
VL = Ir*(%i*XL)
//capacitive reactance, Xc
Xc = 1/(wr*C)
//p.d. across capacitor, Vc
Vc = Ir*(-1*%i*Xc)
//Q-factor at resonance, Qr
Qr = imag(VL)/V

printf("\n\n Result \n\n")
printf("\n (a)inductance, L is %.2E H ",L)
printf("\n (b)p.d. across resistance, VR is %.2f V, p.d. across inductance, VL %.0fi V and p.d. across capacitor, VC %.0fi V ",VR, imag(VL), imag(Vc))
printf("\n (c)Q-factor at resonance, Qr is %.0f  ",Qr)