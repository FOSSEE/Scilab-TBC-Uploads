//Problem 33.01: For the circuit shown in Figure 33.12, use Th´evenin’s theorem to determine (a) the current flowing in the capacitor, and (b) the p.d. across the 150 kohm resistor.

//initializing the variables:
rv = 200; // in volts
thetav = 0; // in degrees
R1 = 5000; // in ohm
R2 = 20000; // in ohm
R3 = -1*%i*120000; // in ohm
R4 = 150000; // in ohm

//calculation:
//voltage
V = rv*cos(thetav*%pi/180) + %i*rv*sin(thetav*%pi/180)
//Initially the (150-i120)kohm impedance is removed from the  circuit as shown in Figure 33.13.
//Note that, to find the current in the capacitor, only the capacitor need have been initially removed from the circuit. However, removing each of the components from the branch through which the current is required will often result in a simpler solution. 
//From Figure 33.13,
//current, I1 
I1 = V/(R1 + R2)
//The open-circuit e.m.f. E is equal to the p.d. across the 20 kohm resistor, i.e.
E = I1*R2
//Removing the V1 source gives the network shown in Figure 33.14.
//The impedance, z, ‘looking in’ at the open-circuited terminals is given by
z = R1*R2/(R1 + R2)
//The Th´evenin equivalent circuit is shown in Figure 33.15, where current iL is given by
ZL = R3 + R4
IL = E/(ZL + z)
ILmag = (real(IL)^2 + imag(IL)^2)^0.5
//current flowing in the capacitor
Ic = ILmag
//P.d. across the 150 kohm resistor,
Vr150 = ILmag*R4

printf("\n\n Result \n\n")
printf("\n(a)the current flowing in the capacitor is %.1E A",Ic)
printf("\n(b) the p.d. across the 150 ohm resistance is %.0f V",Vr150)