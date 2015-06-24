// Three-Phase Circuits :example 6.14 :(pg 6.18)
P=10.44*10^3;
VL=200;
pf=0.5;
x=acosd(pf);
IL=(P/(sqrt(3)*VL*pf));
Iph=(IL/sqrt(3));
Zph=(VL/Iph);
Rph=(Zph*pf);
Xph=(Zph*sind(x));
Q=(sqrt(3)*VL*IL*sind(x));
printf("\nP=10.44kW \nVL=200 V \npf=0.5(leading)");
// For a delta-connected load,
printf("\nVL=Vph=%.f V",VL);
printf("\nP=qrt(3)*VL*IL*cos(phi) \nIL=%.2f A",IL);
printf("\nIph=IL/sqrt(3) =%.1f A",Iph);
printf("\nZph=Vph/Iph =%.2f Ohm",Zph);
printf("\nRph =Zph.cos(phi)=%.3f Ohm",Rph);
printf("\nXph=Zph.sin(phi)=%.2f Ohm",Xph);
printf("\nQ=sqrt(3)*VL*IL*sin(phi) = %.2f VAR",Q);