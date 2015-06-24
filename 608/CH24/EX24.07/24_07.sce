//Problem 24.07: For the circuit shown in Figure 24.11, determine the value of impedance Z2.

//initializing the variables:
rv = 70; // in volts
thetav = 30; // in degrees
ri = 3.5; // in amperes
thetai = -20; // in degrees
//z1 consist of two resistance
R1 = 4.36; // in ohms
R2 = -2.1*%i; // in ohms

//calculation:
V = rv*cos(thetav*%pi/180) + %i*rv*sin(thetav*%pi/180)
I = ri*cos(thetai*%pi/180) + %i*ri*sin(thetai*%pi/180)
//impedance, Z
Z = V/I
//Total impedance Z = z1 + z2
Z1 = R1 + R2
Z2 = Z - Z1
x = real(Z2)
y = imag(Z2) 

printf("\n\n Result \n\n")
printf("\n impedance Z2 is %.2f + (%.2f) ohm\n",x,y)