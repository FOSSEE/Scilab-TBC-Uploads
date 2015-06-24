//Problem 19.08: Three 12 ohms resistors are connected in star to a 415 V, 3-phase supply. Determine the total power dissipated by the resistors.

//initializing the variables:
Rp = 12; // in ohms
VL = 415; // in Volts

//calculation:
//Power dissipated, P = VL*IL*(3^0.5)*cos(phi)  or  P = 3*Ip*Ip*Rp)
Vp = VL/(3^0.5)   // since the resistors are star-connected
//Phase current, Ip
Zp = Rp
Ip = Vp/Zp
//For a star connection
IL = Ip
// For a purely resistive load, the power factor cos(phi) = 1
pf = 1
P = VL*IL*(3^0.5)*pf

printf("\n\n Result \n\n")
printf("\n (a)total power dissipated by the resistors is %.0f W",P)