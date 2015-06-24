//AC Circuits : example 4.82 :(pg 4.66)
R=2;
L=0.01;
V=200;
f0=50;
C=(1/(4*(%pi)^2*L*(f0^2)));
I0=V/R;
Vco=I0*(1/(2*%pi*f0*C));
printf("\nR= 2 Ohm \nL= 0.01 H \nV=200 V \nf0=50 Hz \nf0=1/(2.pi.sqrt(LC)");
printf("\nC = %.e F",C);//capacitance
printf("\nI0= V/R =%.f A",I0);//current
printf("\nVco=I0.Xco \n=%.2f V",Vco); //voltage across capacitor
