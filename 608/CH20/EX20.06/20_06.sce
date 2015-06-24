//Problem 20.06: A 2400 V/400 V single-phase transformer takes a no load current of 0.5 A and the core loss is 400 W. Determine the values of the magnetizing and core loss components of the no load current. Draw to scale the no-load phasor diagram for the transformer.

//initializing the variables:
V1 = 2400; // in Volts
V2 = 400; // in Volts
I0 = 0.5; // in Amperes
Pc = 400; // in Watts

//calculation:
//Core loss (i.e. iron loss) P = V1*I0*cos(phi0)
pf = Pc/(V1*I0)
phi0 = acos(pf)
//Magnetizing component
Im = I0*sin(phi0)
//Core loss component
Ic = I0*cos(phi0)

printf("\n\n Result \n\n")
printf("\n (a)magnetizing component is %.3f A and Core loss component is %.3f A",Im, Ic)