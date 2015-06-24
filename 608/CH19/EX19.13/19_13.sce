//Problem 19.13: A 400 V, 3-phase star connected alternator supplies a delta-connected load, each phase of which has a resistance of 30 ohm and inductive reactance 40 ohm. Calculate (a) the current supplied by the alternator and (b) the output power and the kVA of the alternator, neglecting losses in the line between the alternator and load.

//initializing the variables:
R = 30; // in ohms
XL = 40; // in ohms
VL = 400; // in Volts

//calculation:
Zp = (R*R + XL*XL)^0.5
//a delta-connected load
Vp = VL
//Phase current
Ip = Vp/Zp
IL = Ip*(3^0.5)
//Alternator output power is equal to the power dissipated by the load.
//Power P = VL*IL*(3^0.5)*cos(phi)  or  P = 3*Ip*Ip*Rp)
pf = R/Zp
P = VL*IL*(3^0.5)*pf
//Alternator output kVA,
S = VL*IL*(3^0.5)

printf("\n\n Result \n\n")
printf("\n (a)the current supplied by the alternator is %.2f A",IL)
printf("\n (b)output power is %.2E W and kVA of the alternator is %.2E kVA",P, S)