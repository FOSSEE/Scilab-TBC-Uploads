//AC Circuits : example 4.82 :(pg 4.66)
V=230;
f0=50;
I0=2;
Vco=500;
R=V/I0;
Xco=Vco/I0;
C=(1/(2*%pi*f0*Xco));
L=(Xco/(2*%pi*f0));
printf("\nV = 230 V \nf0 = 50 Hz \nI0 = 2A \nVco = 500 V");
printf("\nR=V/I0 =%.f Ohm",R);
printf("\nXco=Vco/I0 =%.f Ohm",Xco);
printf("\nXco=1/2.pi.f0.C \nC= %.e F",C);//capacitance
printf("\nXco=Xlo \nXlo=%.f Ohm",Xco);//at resonance
printf("\nXlo=2.pi.f0.L \nL=%.3f H",L);//inductance


