//Problem 32.04: For the a.c. network shown in Figure 32.19 determine, using the superposition theorem, (a) the current in each branch, (b) the magnitude of the voltage across the(6 + i8) ohm impedance, and (c) the total active power delivered to the network.

//initializing the variables:
E1 = 5 + %i*0; // in volts
E2 = 2 + %i*4; // in volts
Z1 = 3 + %i*4; // in ohm
Z2 = 2 - %i*5; // in ohm
Z3 = 6 + %i*8; // in ohm

//calculation:
//The original network is redrawn with E2 removed, as shown in Figure 32.20.
//Currents I1, I2 and I3 are labelled as shown in Figure 32.20.
Ze1 = Z3*Z2/(Z3 + Z2)
Ze2 = Ze1 + Z1
//current
I1 = E1/Ze2
I2 = (Z2/(Z3 + Z2))*I1
I3 = (Z3/(Z3 + Z2))*I1
//The original network is redrawn with E1 removed, as shown in Figure 32.22
//Currents I4, I5 and I6 are shown labelled in Figure 32.22 with I4 flowing away from the positive terminal of the E2 source.
Ze3 = Z3*Z1/(Z3 + Z1)
Ze4 = Ze3 + Z2
I4 = E2/Ze4
I5 = (Z1/(Z3 + Z1))*I4
I6 = (Z3/(Z3 + Z1))*I4
//If the network of Figure 32.18 is superimposed on the network of Figure 32.17, it can be seen that the current in the (4+i3) ohm impedance is given by
i1 = I1 + I6
i2 = I3 + I4
i3 = I2 - I5
//magnitude
i1mag = (real(i1)^2 + imag(i1)^2)^0.5
i2mag = (real(i2)^2 + imag(i2)^2)^0.5
E1mag = (real(E1)^2 + imag(E1)^2)^0.5
E2mag = (real(E2)^2 + imag(E2)^2)^0.5
//phase
phi1 = atan(imag(i1)/real(i1))
phi2 = atan(imag(i2)/real(i2))
//voltage across the(6 + i8) ohm impedance
V6i8 = i3*Z3
V6i8m = (real(V6i8)^2 + imag(V6i8)^2)^0.5
//power
P = (E1mag*i1mag*cos(phi1)) + (E2mag*i2mag*cos(phi2 - atan(imag(E2)/real(E2))))

printf("\n\n Result \n\n")
printf("\n(b)current in the (6 + i8) ohm resistor of the network is %.3f V",V6i8m)
printf("\n(c)the total active power delivered to the network is %.3f W",P)