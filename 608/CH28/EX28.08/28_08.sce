//Problem 28.08: An R–L–C series circuit has a resonant frequency of 1.2 kHz and a Q-factor at resonance of 30. If the impedance of the circuit at resonance is 50 ohm determine the values of (a) the inductance, and (b) the capacitance. Find also (c) the bandwidth, (d) the lower and upper half-power frequencies and (e) the value of the circuit impedance at the half-power frequencies.

//initializing the variables:
Zr = 50; // in ohms
fr = 1200; // in Hz
Qr = 30; // Q-factor

//calculation:
//At resonance the circuit impedance, Z
R = Zr
wr = 2*%pi*fr
//Q-factor at resonance is given by Qr = wr*L/R, then L is
L = Qr*R/wr
//At resonance r*L = 1/(wr*C)
//capacitance, C
C = 1/(L*wr*wr)
//bandwidth,.(f2 − f1)
bw = fr/Qr
//upper half-power frequency, f2
f2 = (bw + ((bw^2) + 4*(fr^2))^0.5)/2
//lower half-power frequency, f1
f1 = f2 - bw
//At the half-power frequencies, current I
//I = 0.707*Ir
//Hence impedance
Z = (2^0.5)*R

printf("\n\n Result \n\n")
printf("\n (a)inductance, L is %.3f H ",L)
printf("\n (b)capacitance, C is %.2E F ",C)
printf("\n (c)bandwidth is %.0f Hz ",bw)
printf("\n (d)the upper half-power frequency, f2 is %.0f Hz and the lower half-power frequency, f1 is %.0f Hz ",f2,f1)
printf("\n (e)impedance at the half-power frequencies is %.2f ohm ",Z)