//Problem 34.05: For the network shown in Figure 34.20, determine (a) the current flowing in the (0+i10) ohm impedance, and (b) the power dissipated in the (20 + i0) ohm impedance.

//initializing the variables:
rv = 120; // in volts
thetav = 0; // in degrees
ZA = 25 - %i*5; // in ohm
ZB = 15 + %i*10; // in ohm
ZC = 20 - %i*30; // in ohm
ZD = 20 + %i*0; // in ohm
ZE = 0 + %i*10; // in ohm
ZF = 2.5 - %i*5; // in ohm

//calculation: 
//voltage
V = rv*cos(thetav*%pi/180) + %i*rv*sin(thetav*%pi/180)
//The network may initially be simplified by transforming the delta PQR to its equivalent star connection as represented by impedances Z1, Z2 and Z3 in Figure 34.21. From equation (34.7),
Z1 = ZA*ZB/(ZA + ZB + ZC)
Z2 = ZC*ZB/(ZA + ZB + ZC)
Z3 = ZA*ZC/(ZA + ZB + ZC)
//The network is shown redrawn in Figure 34.22 and further simplified in Figure 34.23, from which,
Zab = ((Z3 + ZE)*(ZD + Z2)/(Z2 + ZE + ZD + Z3)) + (Z1 + ZF)
//Current I1
I1 = V/Zab
//current I2
I2 = ((ZE + Z3)/(Z2 + ZE + ZD + Z3))*I1
//current I3
I3 = I1 - I2
//The power P dissipated in the ZD impedance of Figure 34.20 is given by
Pzd = ZD*I2^2

printf("\n\n Result \n\n")
printf("\n (a)the current flowing in the (0+i10) ohm impedance is %.2f  A",I3)
printf("\n (b) the power dissipated in the (20 + i0) ohm impedance is %.2f W",Pzd)