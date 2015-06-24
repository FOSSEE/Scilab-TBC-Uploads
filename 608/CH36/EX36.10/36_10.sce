//Problem 36.10: An e.m.f. is represented by
// e = 50 + 200sinwt + 40sin(2wt - pi/2) + 5sin(4wt + pi/4) Volts
//the fundamental frequency being 50 Hz. The e.m.f. is applied across a circuit comprising a 100 μF capacitor connected in series with a 50 ohm resistor. Obtain an expression for the current flowing and hence determine the rms value of current.

//initializing the variables:
Vom = 50; // in volts
V1m = 200; // in volts
V2m = 40; // in volts
V4m = 5; // in volts
f = 50; // in Hz
R = 50; // in ohm
C = 100E-6; // in farad
phiv1 = 0; // in rad
phiv2 = -1*%pi/2; // in rad
phiv4 = %pi/4; // in rad

//calculation:
//voltage
V1 = V1m*cos(phiv1) + %i*V1m*sin(phiv1)
V2 = V2m*cos(phiv2) + %i*V2m*sin(phiv2)
V4 = V4m*cos(phiv4) + %i*V4m*sin(phiv4)
//Inductance has no effect on a steady current. Hence the d.c. component of the current, i0, is given by
Iom = 0
//fundamental or first harmonic
w1 = 2*%pi*f
//inductive reactance,
Xc1 = 1/(w1*C)
//impedance at the fundamental frequency,
Z1 = R + %i*Xc1
//Maximum current at fundamental frequency
I1m = V1/Z1
I1mag = (real(I1m)^2 + imag(I1m)^2)^0.5
phii1 = atan(imag(I1m)/real(I1m))
//second harmonic
Xc2 = Xc1/2
//impedance at the third harmonic frequency,
Z2 = R + %i*Xc2
//Maximum current at third harmonic frequency
I2m = V2/Z2
I2mag = (real(I2m)^2 + imag(I2m)^2)^0.5
phii2 = atan(imag(I2m)/real(I2m))
//fourth harmonic
Xc4 = Xc1/4
//impedance at the third harmonic frequency,
Z4 = R + %i*Xc4
//Maximum current at third harmonic frequency
I4m = V4/Z4
I4mag = (real(I4m)^2 + imag(I4m)^2)^0.5
phii4 = atan(imag(I4m)/real(I4m))
//rms current
Irms = (Iom^2 + (I1mag^2 + I2mag^2 + I4mag^2)/2)^0.5

printf("\n\n Result \n\n")
printf("\n(b)the rms value of current is %.2f A",Irms)