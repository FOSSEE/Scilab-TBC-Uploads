// Three-Phase Circuits :example 6.12 :(pg 6.17)
P=100*10^3;
IL=80;
VL=1100;
f=50;
Vph=(VL/sqrt(3));
Iph=IL;
Zph=(Vph/Iph);
pf=(P/(sqrt(3)*VL*IL));
phi=acosd(pf);
Rph=Zph*pf;
Xph=Zph*sind(phi);
C=(1/(2*%pi*f*Xph));
printf("\nP=100kW \nIL=80 A \nVL=1100 V \nf=50 Hz");
//For a star-connected load
printf("\nVph =V/sqrt(3) =%.2f",Vph);
printf("\nIph=IL =%.f A",Iph);
printf("\nZph=(Vph/Iph)= %.2f Ohm",Zph);
printf("\nP=sqrt(3)*VL*IL*cos(phi)");
printf("\ncos(phi)=%.3f (leading)",pf);
printf("\nphi=%.f degrees",phi);
printf("\nRph=Zph*cos(phi) =%.2f Ohm",Rph);
printf("\nXph =Zph*sin(phi) =%.f Ohm",Xph);
// as current is leading,reactance will be capacitive in nature
printf("\nXC=(1/2*pi*C)");
printf("\nC=%.e F",C);

