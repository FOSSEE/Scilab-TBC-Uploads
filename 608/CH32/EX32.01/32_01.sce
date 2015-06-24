//Problem 32.01:A.c. sources of 100/_0° V and internal resistance 25 ohm and 50/_90° V and internal resistance 10 ohm, are connected in parallel across a 20 ohm load. Determine using the superposition theorem, the current in the 20 ohm load and the current in each voltage source

//initializing the variables:
rv1 = 100; // in volts
rv2 = 50; // in volts
thetav1 = 0; // in degrees
thetav2 = 90; // in degrees
r1 = 25; // in ohm
R = 20; // in ohm
r2 = 10; // in ohm

//calculation:
//voltage
V1 = rv1*cos(thetav1*%pi/180) + %i*rv1*sin(thetav1*%pi/180)
V2 = rv2*cos(thetav2*%pi/180) + %i*rv2*sin(thetav2*%pi/180)
//The circuit diagram is shown in Figure 32.7. Following the above procedure:
//The network is redrawn with the 50/_90° V source removed as shown in Figure 32.8
//Currents I1, I2 and I3 are labelled as shown in Figure 32.8.
I1 = V1/(r1 + r2*R/(R + r2))
I2 = (r2/(r2 + R))*I1
I3 = (R/(r2 + R))*I1
//The network is redrawn with the 100/_0° V source removed as shown in Figure 32.9
//Currents I4, I5 and I6 are labelled as shown in Figure 32.9.
I4 = V2/(r2 + r1*R/(r1 + R))
I5 = (r1/(r1 + R))*I4
I6 = (R/(r1 + R))*I4
//Figure 32.10 shows Figure 32.9 superimposed on Figure 32.8, giving the currents shown.
//Current in the 20 ohm load,
I20 = I2 + I5
//Current in the 100/_0° V source
IV1 = I1 - I6
//Current in the 50/_90° V source
IV2 = I4 - I3

printf("\n\n Result \n\n")
printf("\n (a)current in the 20 ohm load is %.3f + (%.3f)i A",real(I20), imag(I20))
printf("\n (b)Current in the 100/_0° V source is %.3f + (%.3f)i A",real(IV1), imag(IV1))
printf("\n (b)Current in the 50/_90° V source is %.3f + (%.3f)i A",real(IV2), imag(IV2))