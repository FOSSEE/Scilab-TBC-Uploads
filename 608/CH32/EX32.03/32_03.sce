//Problem 32.03: Use the superposition theorem to obtain the current flowing in the (4 + i3) ohm impedance of Figure 32.16.

//initializing the variables:
rv1 = 30; // in volts
rv2 = 30; // in volts
thetav1 = 45; // in degrees
thetav2 = -45; // in degrees
R1 = 4; // in ohm
R2 = 4; // in ohm
R3 = %i*3; // in ohm
R4 = -1*%i*10; // in ohm

//calculation:
//voltage
V1 = rv1*cos(thetav1*%pi/180) + %i*rv1*sin(thetav1*%pi/180)
V2 = rv2*cos(thetav2*%pi/180) + %i*rv2*sin(thetav2*%pi/180)
//The network is redrawn with V2 removed, as shown in Figure 32.17.
//Current I1 and I2 are shown in Figure 32.17. From Figure 32.17,
Re1 = R4*(R2 + R3)/(R4 + R3 + R2)
Re2 = Re1 + R1
//current
I1 = V1/Re2
I2 = (R4/(R2 + R3 + R4))*I1
//The original network is redrawn with V1 removed, as shown in Figure 32.18
//Currents I3 and I4 are shown in Figure 32.18. From Figure 32.18,
Re3 = R1*(R2 + R3)/(R1 + R3 + R2)
Re4 = Re3 + R4
I3 = V2/Re4
I4 = (R1/(R2 + R3 + R1))*I3
//If the network of Figure 32.18 is superimposed on the network of Figure 32.17, it can be seen that the current in the (4+i3) ohm impedance is given by
Ir4i3 = I2 - I4

printf("\n\n Result \n\n")
printf("\ncurrent in the (4 + i3) ohm impedance of the network is %.3f + (%.3f)i A",real(Ir4i3), imag(Ir4i3))