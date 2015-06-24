//AC Circuits : example 4.54 :(pg 4.42)
V=125;
I=2.2;
P=96.8;
f=50;
Z=V/I;
R=(P/(I^2));
Xc=sqrt((Z^2)-(R^2));
C=(1/(2*%pi*f*Xc));
printf("\nV=125 V \nP=96.8 W \nI=2.2 A \nf=50 Hz");
printf("\nZ=V/I=%.2f A",Z);
printf("\nP=(I^2)*R \nR=%.f Ohm",R);
printf("\nXc=sqrt((Z^2)-(R^2))=%.2f Ohm",Xc);
printf("\nXc=1/(2*pi*f*C) \n C=%.2e F",C);