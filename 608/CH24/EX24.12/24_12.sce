//Problem 24.12: For the circuit shown in Figure 24.17, determine the values of voltages V1 and V2 if the supply frequency is 4 kHz. Determine also the value of the supply voltage V and the circuit phase angle. Draw the phasor diagram.

//initializing the variables:
C = 2.653E-6; // in Farads
R1 = 8; // in ohms
R2 = 5; // in ohms
L = 0.477E-3; // in Henry
f = 4000; // in Hz
ri = 6; // in Amperes
thetai = 0; // in degrees

//calculation:
I = ri*cos(thetai*%pi/180) + %i*ri*sin(thetai*%pi/180)
//Capacitive reactance, Xc
Xc = 1/(2*%pi*f*C)
//impedance Z1
Z1 = R1 - %i*Xc
//inductive reactance XL
XL = 2*%pi*f*L
//impedance Z2,
Z2 = R2 + %i*XL
//voltage V1
V1 = I*Z1
//voltage V2
V2 = I*Z2
//Supply voltage, V
V = V1 + V2
phiv = atan(imag(V)/real(V))*180/%pi
phi = phiv - thetai

printf("\n\n Result \n\n")
printf("\n supply voltage is %.2f + (%.2f)i V\n",real(V), imag(V))
printf("and Circuit phase angle is %.2f° \n",phi)