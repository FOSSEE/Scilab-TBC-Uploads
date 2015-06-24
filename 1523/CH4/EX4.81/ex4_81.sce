//AC Circuits : example 4.81 :(pg 4.66)
V=200;
Vc=5000;
I0=20;
C=4*10^-6;
R=V/I0;
Xco=Vc/I0;
f0=(1/(2*%pi*Xco*C));
L=(Xco/(2*%pi*f0));
printf("\nV=200 V \nI0= 20 A \nVc=5000 V \nC=4uF");
printf("\nR=V/I0 =%.f Ohm",R);//resistance
printf("\nXco=Vco/Io =%.f Ohm",Xco);
printf("\nXco=1/2*pi*f0*C \nf0=1/2*pi*Xco*C =%.2f Hz",f0);
printf("\nat resonance Xco=Xlo \nXlo=%.f Ohm",Xco);
printf("\nXlo=2*pi*f0*L \nL=%.2f H",L);

