// Three-Phase Circuits :example 6.11 :(pg 6.16)
VL=208;
P=1800;
IL=10;
Vph=VL/sqrt(3);
Zph=(Vph/IL);
pf=P/(sqrt(3)*VL*IL);
phi=acosd(pf);
Rph=Zph*pf;
Xph=Zph*sind(phi);
printf("\nVL=208 V \nP=1800 W \nIL= 10 A");
//For a Wye-connected load,
printf("\nVph = VL/sqrt(3) =%.2f V",Vph);
printf("\nIph = IL =%.f A",IL);
printf("\nZph=Vph/Iph =%.2f Ohm",Zph);
printf("\nP=sqrt(3)*VL*IL*cos(phi)");
printf("\ncos(phi)=%.1f degrees",pf);
printf("\nphi=%.f degrees",phi);
printf("\nRph=Zph*cos(phi) =%.2f Ohm",Rph);
printf("\nXph=Zph*sin(phi) =%.2f Ohm",Xph);