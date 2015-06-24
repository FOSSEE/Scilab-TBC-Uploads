//Problem 43.12:For the circuit shown in Figure 43.12 each winding is tuned to resonate at the same frequency. Determine (a) the reso-nant frequency, (b) the value of capacitor C2 , (c) the effective primary impedance, (d) the primary current, (e) the voltage across capacitor C2 and (f) the coefficient of coupling.

//initializing the variables:
E1 = 20; // in Volts
thetae1 = 0; // in degrees
R1 = 15; // in ohm
C1 = 400E-12; // in farad
R2 = 30; // in ohm
L1 = 0.001; // in Henry
L2 = 0.0002; // in Henry
R3 = 50; // in ohm
M = 10E-6; // in Henry

//calculation:
//voltage
E1 = E1*cos(thetae1*%pi/180) + %i*E1*sin(thetae1*%pi/180)
//the resonant frequency, fr 
fr = 1/(2*%pi*(L1*C1)^0.5)
w = 2*%pi*fr
//The secondary is also tuned to a resonant frequency
//capacitance,C2
C2 = 1/(L2*(2*%pi*fr)^2)
//the effective primary impedance Z1eff 
Z1e = R1 + R2 + ((w*M)^2)/R3
//Primary current I1 
I1 = E1/Z1e
//Secondary current I2
E2 = %i*w*M*I1
I2 = E2/R3
//voltage across capacitor C2
Vc2 = I2*-1*%i/(w*C2)
//coefficient of coupling, k 
k = M/(L1*L2)^0.5

printf("\n\n Result \n\n")
printf("\n the resonant frequency,fr is %.0f Hz",fr)
printf("\n capacitance,C2 is %.2E F",C2)
printf("\n Effective primary impedance Z1(eff) is %.0f +(%.0f)i ohm",real(Z1e), imag(Z1e))
printf("\n primary current I1 is %.2f +(%.2f)i A",real(I1), imag(I1))
printf("\n voltage across capacitor C2 is %.0f +(%.0f)i V",real(Vc2), imag(Vc2))
printf("\n coefficient of coupling, k  is %.4f",k)
