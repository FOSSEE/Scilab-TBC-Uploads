//Problem 29.03: A coil of inductance 120 mH and resistance 150 ohm is connected in parallel with a variable capacitor across a 20 V, 4 kHz supply. Determine for the condition when the supply current is a minimum, (a) the capacitance of the capacitor, (b) the dynamic resistance, (c) the supply current, (d) the Q-factor, (e) the band-width, (f) the upper and lower -3 dB frequencies, and (g) the value of the circuit impedance at the -3 dB frequencies.

//initializing the variables:
R = 150; // in ohms
L = 0.120; // IN Henry
V = 20; //in volts
fr = 4000; // in Hz

//calculation:
//capacitance, C
C = 1/(L*[(2*%pi*fr)^2 + ((R^2)/(L^2))])
Rd = L/(C*R)
//Current at resonance
Ir = V/Rd
wr = 2*%pi*fr
//Q-factor at resonance, Q = wr*L/R
Qr = wr*L/R
//bandwidth,.(f2 − f1)
bw = fr/Qr
//upper half-power frequency, f2
f2 = (bw + ((bw^2) + 4*(fr^2))^0.5)/2
//lower half-power frequency, f1
f1 = f2 - bw
//impedance at the −3 dB frequencies
Z = Rd/(2^0.5)

printf("\n\n Result \n\n")
printf("\n (a)the capacitance of the capacitor,C is %.2E F",C)
printf("\n (b)dynamic resistance %.2E ohm ",Rd)
printf("\n (c)Current at resonance, Ir is %.3E A ",Ir)
printf("\n (d)Q-factor at resonance is %.2f ",Qr)
printf("\n (e)bandwidth is %.0f Hz ",bw)
printf("\n (f)the upper half-power frequency, f2 is %.0f Hz and the lower half-power frequency, f1 is %.0f Hz ",f2,f1)
printf("\n (g)impedance at the −3 dB frequencies is %.3E ohm",Z)