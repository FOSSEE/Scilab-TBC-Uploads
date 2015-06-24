//Problem 19.14: Each phase of a delta-connected load comprises a resistance of 30 ohm and an 80 μF capacitor in series. The load is connected to a 400 V, 50 Hz, 3-phase supply. Calculate (a) the phase current, (b) the line current, (c) the total power dissipated and (d) the kVA rating of the load. Draw the complete phasor diagram for the load.

//initializing the variables:
R = 30; // in ohms
C = 80E-6; // in Farads
f = 50; // in Hz
VL = 400; // in Volts

//calculation:
//Capacitive reactance
Xc = 1/(2*%pi*f*C)
Zp = (R*R + Xc*Xc)^0.5
pf = R/Zp
//a delta-connected load
Vp = VL
//Phase current
Ip = Vp/Zp
IL = Ip*(3^0.5)
//Power P = VL*IL*(3^0.5)*cos(phi)  or  P = 3*Ip*Ip*Rp)
P = VL*IL*(3^0.5)*pf
//Alternator output kVA,
S = VL*IL*(3^0.5)

printf("\n\n Result \n\n")
printf("\n (a)the phase current  is %.3f A",Ip)
printf("\n (b)the line current  is %.2f A",IL)
printf("\n (c) power is %.2E W and \n(d)kVA of the alternator is %.2E kVA",P, S)