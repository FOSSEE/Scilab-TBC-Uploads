//Problem 20.27: A three-phase transformer has 500 primary turns and 50 secondary turns. If the supply voltage is 2.4 kV find the secondary line voltage on no-load when the windings are connected a) star-delta, (b) delta-star.

//initializing the variables:
N1 = 500; // prim turns
N2 = 50; // sec turns
VL = 2400; // in Volts

//calculation:
//For a star-connection, VL = Vp*(3^0.5)
VL1s = VL
//Primary phase voltage
Vp1s = VL1s/(3^0.5)
//For a delta-connection, VL = Vp
//N1/N2 = V1/V2, from which,
//secondary phase voltage, Vp2s
Vp2s = Vp1s*N2/N1
VL2d = Vp2s

//For a delta-connection, VL = Vp
VL1d = VL
//primary phase voltage Vp1d
Vp1d = VL1d
//Secondary phase voltage, Vp2d
Vp2d = Vp1d*N2/N1
//For a star-connection, VL = Vp*(3^0.5)
VL2s = Vp2d*(3^0.5)

printf("\n\n Result \n\n")
printf("\n the secondary line voltage for star and delta connection are %.0f V and %.1f V respectively", VL2s, VL2d)