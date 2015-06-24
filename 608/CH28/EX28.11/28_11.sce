//Problem 28.11: In an L–R–C series network, the inductance, L = 8 mH, the capacitance, C = 0.3 μF, and the resistance, R = 15 ohm. Determine the current flowing in the circuit when the input voltage is 7.56/_0° V and the frequency is (a) the resonant frequency, (b) a frequency 3% above the resonant frequency. Find also (c) the impedance of the circuit when the frequency is 3% above the resonant frequency.

//initializing the variables:
R = 15; // in ohms
L = 0.008; // IN Henry
C = 0.3e-6; // IN fARADS
rv = 7.56; //in volts
thetav = 0; // in degrees
x = 0.03;

//calculation:
//Resonant frequency,
fr = 1/(2*%pi*((L*C)^0.5))
wr = 2*%pi*fr
//At resonance,
Zr = R
//voltage
V = rv*cos(thetav*%pi/180) + %i*rv*sin(thetav*%pi/180)
//Current at resonance
Ir = V/Zr
//Q-factor at resonance, Q = wr*L/R
Qr = wr*L/R
//If the frequency is 3% above  fr, then
del = x
I = Ir/(1 + (2*del*Qr*%i))
Z = V/I

printf("\n\n Result \n\n")
printf("\n (a)Current at resonance, Ir is %.2f A ",Ir)
printf("\n (b)current flowing in the circuit when frequency 3 percent above the resonant frequency is %.4f + (%.4f)i A ",real(I), imag(I))
printf("\n (c)impedance of the circuit when the frequency is 3 percent above the resonant frequency is %.0f + (%.2f)i A ",real(Z), imag(Z))