//Problem 43.11: For the coupled circuit shown in Figure 43.10, calculate (a) the self impedance of the primary circuit, (b) the self impedance of the secondary circuit, (c) the impedance reflected into the primary circuit, (d) the effective primary impedance, (e) the primary current, and (f) the secondary current

//initializing the variables:
E1 = 50; // in Volts
thetae1 = 0; // in degrees
w = 500; // in rad/sec
R1 = 300; // in ohm
L1 = 0.2; // in Henry
L2 = 0.5; // in Henry
L3 = 0.3; // in Henry
R2 = 500; // in ohm
C = 5E-6; // in farad
M = 0.2; // in Henry

//calculation:
//voltage
E1 = E1*cos(thetae1*%pi/180) + %i*E1*sin(thetae1*%pi/180)
// Self impedance of primary circuit
Z1 = R1 + %i*w*(L1 + L2)
//Self impedance of secondary circuit,
Z2 = R2 + %i*(w*L3 - 1/(w*C))
//reflected impedance, Zr
Zr = (w*M)^2/Z2
//Effective primary impedance,
Z1e = Z1 + Zr
//Primary current I1 
I1 = E1/Z1e
//Secondary current I2
E2 = %i*w*M*I1
I2 = E2/Z2

printf("\n\n Result \n\n")
printf("\n Self impedance of primary circuit, Z1 is %.0f + (%.0f)i ohm",real(Z1), imag(Z1))
printf("\n Self impedance of secondary circuit, Z2 is %.0f + (%.0f)i ohm",real(Z2), imag(Z2))
printf("\n reflected impedance, Zr is %.0f +(%.0f)i ohm",real(Zr), imag(Zr))
printf("\n Effective primary impedance Z1(eff) is %.0f +(%.0f)i ohm",real(Z1e), imag(Z1e))
printf("\n primary current I1 is %.2f +(%.2f)i A",real(I1), imag(I1))
printf("\n secondary current I2 is %.2f +(%.2f)i A",real(I2), imag(I2))
