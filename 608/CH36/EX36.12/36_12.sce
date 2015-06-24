//Problem 36.12: The voltage applied to a particular circuit comprising two components connected in series is given by
// v = 30 + 40sinwt + 25sin(2wt) + 15sin(4wt) Volts
//and the resulting current is given by
//  v = 0.743sin(wt + 1.19) + 0.78sin(2wt + 0.896) + 0.636sin(4wt + 0.559) A
//Determine (a) the average power supplied, (b) the type of components present, and (c) the values of the components.

//initializing the variables:
Vom = 30; // in volts
V1m = 40; // in volts
V2m = 25; // in volts
V4m = 15; // in volts
Iom = 0; // in amperes
I1m = 0.743; // in Amperes
I2m = 0.781; // in Amperes
I4m = 0.636; // in Amperes
phii1 = 1.190; // in rad
phii2 = 0.896; // in rad
phii4 = 0.559; // in rad
w = 1000; // in rad

//calculation:
//the average power P is given by
P = Vom*Iom + (0.707*V1m)*(0.707*I1m)*cos(phii1) + + (0.707*V2m)*(0.707*I2m)*cos(phii2) + (0.707*V4m)*(0.707*I4m)*cos(phii4)
//rms current
Irms = (Iom^2 + (I1m^2 + I2m^2 + I4m^2)/2)^0.5
//resistance R
R = P/(Irms^2)
//impedance
Z1 = V1m/I1m
//Xc1
Xc1 = (Z1^2 - R^2)^0.5
//capacitance
C = 1/(w*Xc1)

printf("\n\n Result \n\n")
printf("\n(a)the average power P is %.2f W",P)
printf("\n(c)the resistance R %.0f ohm and capacitance %.2E F",R,C)