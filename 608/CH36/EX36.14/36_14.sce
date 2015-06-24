//Problem 36.14: A voltage waveform having a fundamental of maximum value 400 V and a third harmonic of maximum value 10 V is applied to the circuit shown in Figure 36.18. Determine (a) the fundamental frequency for resonance with the third harmonic, and (b) the maximum value of the fundamental and third harmonic components of current.

//initializing the variables:
V1m = 400; // in volts
V3m = 10; // in volts
C = 0.2E-6; // in farads
R = 2; // in ohms
L = 0.5; // in Henry

//calculation:
//Resonance with the third harmonic means that
w = (1/(9*L*C))^0.5
//fundamental frequency, f
f = w/(2*%pi)
//At the fundamental frequency,
//impedance Z1
Z1 = R + %i*(w*L - 1/(w*C))
Z1mag = (real(Z1)^2 + imag(Z1)^2)^0.5
phiZ1 = atan(imag(Z1)/real(Z1))
//Maximum value of current at the fundamental frequency,
I1m = V1m/Z1mag
//At the third harmonic frequency,
Z3 = R + %i*(3*w*L - 1/(3*w*C))
Z3mag = (real(Z3)^2 + imag(Z3)^2)^0.5
phiZ3 = atan(imag(Z3)/real(Z3))
//Maximum value of current at the third harmonic frequency,
I3m = V3m/Z3

printf("\n\n Result \n\n")
printf("\n(a)fundamental frequency for resonance with the third harmonic is %.2f Hz",f)
printf("\n(b)Maximum value of current at the fundamental frequency is %.3f A and at the third harmonic frequency %.2f A",I1m, I3m)