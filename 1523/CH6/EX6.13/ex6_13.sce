// Three-Phase Circuits :example 6.13 :(pg 6.17 & 6.18)
VL=400;
IL=34.65;
P=14.4*10^3;
Iph=(IL/sqrt(3));
Zph=(VL/Iph);
pf=(P/(sqrt(3)*VL*IL));
phi=acosd(pf);
Rph=(Zph*pf);
Xph=(Zph*sind(phi));
printf("\nVL=400 V \nIL=34.65 A \nP=14.4kW");
//For a Delta-connected load
printf("\nVL=Vph=%.f V",VL);
printf("\nIph=IL/sqrt(3)=%.f A",Iph);
printf("\nZph=Vph/Iph =%.f Ohm",Zph);
printf("\ncos(phi)=P/sqrt(3).VL.IL =%.1f",pf);
printf("\nphi=%.2f degrees",phi);
printf("\nRph=Zph.cos(phi) =%.f Ohm",Rph);
printf("\nXph=Zph.sin(phi)=%.f Ohm",Xph);
