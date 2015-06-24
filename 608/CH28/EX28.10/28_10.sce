//Problem 28.10: A coil of inductance 351.8 mH and resistance 8.84 ohm is connected in series with a 20 μF capacitor. Determine (a) the resonant frequency, (b) the Q-factor at resonance, (c) the bandwidth, and (d) the lower and upper -3dB frequencies.

//initializing the variables:
R = 8.84; // in ohms
L = 0.3518; // IN Henry
C = 20e-6; // IN fARADS

//calculation:
//Resonant frequency,
fr = 1/(2*%pi*((L*C)^0.5))
wr = 2*%pi*fr
//Q-factor at resonance, Q = wr*L/R
Qr = wr*L/R
//bandwidth,.(f2 − f1)
bw = fr/Qr
//the lower −3 dB frequency
f1 = fr - bw/2
//the upper −3 dB frequency
f2 = fr + bw/2

printf("\n\n Result \n\n")
printf("\n (a)Resonant frequency, fr is %.0f Hz",fr)
printf("\n (b)Q-factor at resonance is %.0f",Qr)
printf("\n (c)Bandwidth is %.0f Hz ",bw)
printf("\n (d)the lower -3dB frequency, f1 is %.0f Hz and the upper -3dB frequency, f2 is %.0f Hz ",f1,f2)