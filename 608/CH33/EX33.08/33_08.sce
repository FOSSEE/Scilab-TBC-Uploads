//Problem 33.08: For the a.c. bridge network shown in Figure 33.35, determine the current flowing in the capacitor, and its direction, by using Th´evenin’s theorem. Assume the 306/_0° V source to have negligible internal impedance.

//initializing the variables:
rv = 30; // in volts
thetav = 0; // in degrees
R1 = 15; // in ohm
R2 = 40; // in ohm
R3 = %i*20; // in ohm
R4 = 20; // in ohm
R5 = %i*5; // in ohm
R6 = 5; // in ohm
R7 = -1*%i*25; // in ohm

//calculation:
//voltage
V = rv*cos(thetav*%pi/180) + %i*rv*sin(thetav*%pi/180)
//The R7 is initially removed from the network, as shown in Figure 33.36
Z1 = R1
Z2 = R2
Z3 = R3 + R4
Z4 = R5 + R6
//P.d. between A and C,
Vac = (Z1/(Z1 + Z4))*V
//P.d. between B and C,
Vbc = (Z2/(Z2 + Z3))*V
//Assuming that point A is at a higher potential than point B, then the p.d. between A and B is
Vab = Vac - Vbc
//the open-circuit voltage across AB is given by
E = Vab
//Point C is at a potential of V . Between C and A is a volt drop of Vac. Hence the voltage at point A is
Va = V - Vac
//Between points C and B is a voltage drop of Vbc. Hence the voltage at point B
Vb = V - Vbc
//Replacing the V source with a short-circuit (i.e., zero internal impedance) gives the network shown in Figure 33.37(a). The network is shown redrawn in Figure 33.37(b) and simplified in Figure 33.37(c). Hence the impedance, z, ‘looking in’ at terminals AB is given by
z = Z1*Z4/(Z1 + Z4) + Z2*Z3/(Z2 + Z3)
//The Th´evenin equivalent circuit is shown in Figure 33.38, where current I is given by
I = E/(z + R7)
Imag = (real(I)^2 + imag(I)^2)^0.5

printf("\n\n Result \n\n")
printf("\n  the current flowing in the capacitor is %.3f A in direction from B to A.",Imag)