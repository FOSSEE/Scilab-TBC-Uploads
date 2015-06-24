//Problem 15.08: A coil takes a current of 2 A from a 12 V d.c. supply. When connected to a 240 V, 50 Hz supply the current is 20 A. Calculate the resistance, impedance, inductive reactance and inductance of the coil.

//initializing the variables:
Vdc = 12; // in volts
Vac = 240; // in volts
Iac = 20; // in Amperes
Idc = 2; // in Amperes
f = 50; // in Hz

//calculation:
R = Vdc/Idc
Z = Vac/Iac
XL = (Z^2 - R^2)^0.5
L = XL/(2*%pi*f)

printf("\n\n Result \n\n") 
printf("\n (a)Resistance, R = %.0f ohms",R)
printf("\n (b)Impedance, Z = %.0f ohms",Z)
printf("\n (c)Inductive reactance, XL = %.2f ohms",XL)
printf("\n (d)Inductance, L = %.4f H",L)