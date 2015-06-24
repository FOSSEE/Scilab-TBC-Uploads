//Problem 34.03: Determine, for the bridge network shown in Figure 34.12, (a) the value of the single equivalent resistance that replaces the network between terminals A and B, (b) the current supplied by the 52 V source, and (c) the current flowing in the 8 ohm resistance.

//initializing the variables:
V = 52; // in volts
ZA = 8; // in ohm
ZB = 16; // in ohm
ZC = 40; // in ohm
ZD = 1; // in ohm
ZE = 4; // in ohm

//calculation: 
//In Figure 34.12, no resistances are directly in parallel or directly in series with each other. However, ACD and BCD are both delta connections and either may be converted into an equivalent star connection. The delta network BCD is redrawn in Figure 34.13(a) and is transformed into an equivalent star connection as shown in Figure 34.13(b), where
Z1 = ZA*ZB/(ZA + ZB + ZC)
Z2 = ZC*ZB/(ZA + ZB + ZC)
Z3 = ZA*ZC/(ZA + ZB + ZC)
//The network of Figure 34.12 may thus be redrawn as shown in Figure 34.14. The Z1 and ZE are in series with each other, as are the ZD and Z3 resistors. Hence the equivalent network is as shown in Figure 34.15. The total equivalent resistance across terminals A and B is given by
Zab = (Z1 + ZE)*(ZD + Z3)/(Z1 + ZE + ZD + Z3) + Z2
//Current supplied by the source, i.e., current I in Figure 34.15, is given by
I = V/Zab
//From Figure 34.15, current I1
I1 = ((ZD + Z3)/(Z1 + ZE + ZD + Z3))*I
//current I2
I2 = I - I1
//From Figure 34.14, p.d. across AC,
Vac = I1*ZE
//p.d. across AD
Vad = I2*ZD
//Hence p.d. between C and D is given
Vcd = Vac - Vad
//current in the 8 ohm resistance
Ir8 = Vcd/ZA

printf("\n\n Result \n\n")
printf("\n (a)the equivalent circuit impedance across terminals AB is %.2f  ohm",Zab)
printf("\n (b)the current supplied by the 52 V source is %.2f  A",I)
printf("\n (c)the current flowing in the 8 ohm resistance is %.2f A",Ir8)