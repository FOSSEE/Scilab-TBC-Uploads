//Problem 36.09: A supply voltage v given by
// v = 240sin314t + 40sin942t + 30sin1570t Volts
//is applied to a circuit comprising a resistance of 12 ohm connected in series with a coil of inductance 9.55 mH. Determine (a) an expression to represent the instantaneous value of the current, (b) the rms voltage, (c) the rms current, (d) the power dissipated, and (e) the overall power factor.

//initializing the variables:
V1m = 240; // in volts
V3m = 40; // in volts
V5m = 30; // in volts
w1 = 314; // fundamental
R = 12; // in ohm
L = 0.00955; // in Henry

//calculation:
//fundamental or first harmonic
//inductive reactance,
XL1 = w1*L
//impedance at the fundamental frequency,
Z1 = R + %i*XL1
//Maximum current at fundamental frequency
I1m = V1m/Z1
I1mag = (real(I1m)^2 + imag(I1m)^2)^0.5
phii1 = atan(imag(I1m)/real(I1m))
//Third harmonic
XL3 = 3*XL1
//impedance at the third harmonic frequency,
Z3 = R + %i*XL3
//Maximum current at third harmonic frequency
I3m = V3m/Z3
I3mag = (real(I3m)^2 + imag(I3m)^2)^0.5
phii3 = atan(imag(I3m)/real(I3m))
//fifth harmonic
XL5 = 5*XL1
//impedance at the third harmonic frequency,
Z5 = R + %i*XL5
//Maximum current at third harmonic frequency
I5m = V5m/Z5
I5mag = (real(I5m)^2 + imag(I5m)^2)^0.5
phii5 = atan(imag(I5m)/real(I5m))
//rms voltage
Vrms = ((V1m^2 + V3m^2 + V5m^2)/2)^0.5
//rms current
Irms = ((I1mag^2 + I3mag^2 + I5mag^2)/2)^0.5
//power dissipated
P = R*Irms^2
//overall power factor
pf = P/(Vrms*Irms)

printf("\n\n Result \n\n")
printf("\n(b)the rms value of current is %.2f A",Irms)
printf("\n(c)the rms value of voltage is %.2f V",Vrms)
printf("\n(d)the total power dissipated %.0f W",P)
printf("\n(e)overall power factor %.3f",pf)