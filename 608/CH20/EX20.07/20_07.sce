//Problem 20.07: A transformer takes a current of 0.8 A when its primary is connected to a 240 volt, 50 Hz supply, the secondary being on open circuit. If the power absorbed is 72 watts, determine (a) the iron loss current, (b) the power factor on no-load, and (c) the magnetizing current.

//initializing the variables:
V = 240; // in Volts
I0 = 0.8; // in Amperes
P = 72; // in Watts
f = 50; // in Hz

//calculation:
//Power absorbed = total core loss, P = V*I0*cos(phi0)
//Ic = I0*cos(phi0)
Ic = P/V
pf = Ic/I0
//From the right-angled triangle in Figure 20.2(b) and using
//Pythagoras’ theorem, 
Im = (I0*I0 - Ic*Ic)^0.5

printf("\n\n Result \n\n")
printf("\n (a) Core loss component is %.2f A", Ic)
printf("\n (b) power factor is %.3f", pf)
printf("\n (c)magnetizing component is %.2f A",Im)