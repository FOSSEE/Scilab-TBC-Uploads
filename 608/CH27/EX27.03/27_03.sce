//Problem 27.03: A Schering bridge network is as shown in Figure 27.7. Given C2 = 0.2 μF, R4 = 200 ohm, R3 = 600 ohm, C3 = 4000 pF and the supply frequency is 1.5 kHz, determine, when the bridge is balanced, (a) the value of resistance Rx, (b) the value of capacitance Cx, (c) the phase angle of the unknown arm, (d) the power factor of the unknown arm and (e) its loss angle.

//initializing the variables:
R3 = 600; // in ohms
R4 = 200; // in ohms
C2 = 0.2e-6; // IN fARADS
C3 = 4000e-12; // IN fARADS
f = 1500; //in Hz

//calculation:
//the bridge is balanced
//Resistance, Rx
Rx = R4*C3/C2
//Capacitance, Cx
Cx = C2*R3/R4
//Phase angle
phi = atan(1/(2*%pi*f*Cx*Rx))
phid = phi*180/%pi // in degrees
//Power factor of capacitor
Pc = cos(phi)
//Loss angle,
del = 90 - phid

printf("\n\n Result \n\n")
printf("\n (a)Resistance Rx = %.0f ohm ",Rx)
printf("\n (b)capacitance, Cx is %.2E Farad ",Cx)
printf("\n (c)phasor diagram = %.2f° ",phid)
printf("\n (d)power factor is %.4f ",Pc)
printf("\n (e)Loss angle = %.2f° ",del)