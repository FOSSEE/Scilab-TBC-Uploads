//Chapter 1, Example 1.1
clc
E=10e-6                             //electric field strength in volts/metre
Z=377                               //wave impedance in ohm
A=5                                 //area in metre square

//calculating magnetic field strength
H=E/Z
//calculating incident power
P=E*H*A

printf("(a) Magnetic field strength = %.3f nA/m\n\n",H*10^9)
printf("(b) Incident power on a recieving aerial = %.3f pW\n\n",P*10^12)
