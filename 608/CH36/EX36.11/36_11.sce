//Problem 36.11: A supply voltage v given by
// v = 25 + 100sinwt + 40sin(3wt + pi/6) + 20sin(5wt + pi/12) Volts
//where w = 10000 rad/s. The voltage is applied to a series circuit comprising a 5.0 ohm resistance and a 500 μH inductance. Determine (a) an expression to represent the current flowing in the circuit, (b) the rms value of current, correct to two decimal places, and (c) the power dissipated in the circuit, correct to three significant figures.

//initializing the variables:
Vom = 25; // in volts
V1m = 100; // in volts
V3m = 40; // in volts
V5m = 20; // in volts
w1 = 10000; // fundamental
R = 5; // in ohm
L = 500E-6; // in Henry
phiv1 = 0; // in rad
phiv3 = %pi/6; // in rad
phiv5 = %pi/12; // in rad

//calculation:
//voltage
V1 = V1m*cos(phiv1) + %i*V1m*sin(phiv1)
V3 = V3m*cos(phiv3) + %i*V3m*sin(phiv3)
V5 = V5m*cos(phiv5) + %i*V5m*sin(phiv5)
//Inductance has no effect on a steady current. Hence the d.c. component of the current, i0, is given by
Iom = Vom/R
//fundamental or first harmonic
//inductive reactance,
XL1 = w1*L
//impedance at the fundamental frequency,
Z1 = R + %i*XL1
//Maximum current at fundamental frequency
I1m = V1/Z1
I1mag = (real(I1m)^2 + imag(I1m)^2)^0.5
phii1 = atan(imag(I1m)/real(I1m))
//Third harmonic
XL3 = 3*XL1
//impedance at the third harmonic frequency,
Z3 = R + %i*XL3
//Maximum current at third harmonic frequency
I3m = V3/Z3
I3mag = (real(I3m)^2 + imag(I3m)^2)^0.5
phii3 = atan(imag(I3m)/real(I3m))
//fifth harmonic
XL5 = 5*XL1
//impedance at the third harmonic frequency,
Z5 = R + %i*XL5
//Maximum current at third harmonic frequency
I5m = V5/Z5
I5mag = (real(I5m)^2 + imag(I5m)^2)^0.5
phii5 = atan(imag(I5m)/real(I5m))
//rms current
Irms = (Iom^2 + (I1mag^2 + I3mag^2 + I5mag^2)/2)^0.5
//power dissipated
P = R*Irms^2

printf("\n\n Result \n\n")
printf("\n(b)the rms value of current is %.2f A",Irms)
printf("\n(c)the total power dissipated %.0f W",P)