//Problem 43.10: For the circuit shown in Figure 43.9, determine the value of the secondary current I2 if E1 = 2/_0° volts and the frequency is 1000/pi Hz.

//initializing the variables:
E1 = 2; // in Volts
thetae1 = 0; // in degrees
f = 1000/%pi; // in Hz
R1 = 4; // in ohm
R2 = 16; // in ohm
R3 = 16; // in ohm
R4 = 50; // in ohm
L = 10E-3; // in Henry
M = 2E-3; // in Henry

//calculation:
w = 2*%pi*f
//voltage
E1 = E1*cos(thetae1*%pi/180) + %i*E1*sin(thetae1*%pi/180)
//R1e is the real part of Z1e
R1e = R1 + R2 + ((R3 + R4)*(M^2)*(w^2))/((R3 + R4)^2 + (w*L)^2)
//X1e is the imaginary part of Z1e
X1e = w*L - (L*(M^2)*(w^3))/((R3 + R4)^2 + (w*L)^2)
Z1e = R1e + %i*X1e
Z2e = R3 + R4 + %i*w*L
//primary current, I1
I1 = E1/Z1e
//E2
E2 = %i*w*M*I1
//secondary current I2
I2 = E2/Z2e

printf("\n\n Result \n\n")
printf("\n secondary current I2 is %.2E +(%.2E)i A",real(I2), imag(I2))