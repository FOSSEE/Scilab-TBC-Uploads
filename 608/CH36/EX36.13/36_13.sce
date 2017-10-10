//Problem 36.13: In the circuit shown in Figure 36.17 the supply voltage v is given by v = 300sin314t + 120sin(942t + 0.698) Volts.Determine (a) an expression for the supply current, i, (b) the percentage harmonic content of the supply current, (c) the total power dissipated, (d) an expression for the p.d. shown as v1, and (e) an expression for current ic.

//initializing the variables:
V1m = 300; // in volts
V3m = 120; // in volts
phiv1 = 0; // in rad
phiv3 = 0.698; // in rad
w1 = 314; // in rad
C = 2.123E-6; // in farads
R1 = 560; // in ohms
R2 = 2000; // in Ohm

//calculation:
//voltage
V1 = V1m*cos(phiv1) + %i*V1m*sin(phiv1)
V3 = V3m*cos(phiv3) + %i*V3m*sin(phiv3)
//capacitive reactance,
Xc1 = 1/(w1*C)
//impedance at the fundamental frequency,
Z1 = R1 + %i*Xc1*R2/(R2 + %i*Xc1)
//Maximum current at fundamental frequency
I1m = V1/Z1
I1mag = (real(I1m)^2 + imag(I1m)^2)^0.5
phii1 = atan(imag(I1m)/real(I1m))
//Third harmonic
Xc3 = Xc1/3
//impedance at the third harmonic frequency,
Z3 = R1 + %i*Xc3*R2/(R2 + %i*Xc3)
//Maximum current at third harmonic frequency
I3m = V3/Z3
I3mag = (real(I3m)^2 + imag(I3m)^2)^0.5
phii3 = atan(imag(I3m)/real(I3m))
//Percentage harmonic content of the supply current is given by
percent = I3mag*100/I1mag
//total active power
P = (0.707*V1m)*(0.707*I1mag)*cos(phiv1 - phii1) + (0.707*V3m)*(0.707*I3m)*cos(phiv3 - phii3)

printf("\n\n Result \n\n")
printf("\n(b)Percentage harmonic content of the supply current is %.0f percent",percent)
printf("\n(c)total active power is %.2f W",P)