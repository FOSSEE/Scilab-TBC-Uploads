// Three-Phase Circuits :example 6.10 :(pg 6.16)
P=1500*10^3;
pf=0.85;
VL=2.2*10^3;
phi=acosd(pf);
IL=P/(sqrt(3)*VL*pf);
Iph=IL/sqrt(3);
AC=Iph*pf;
RC=Iph*sind(phi);
IAC=IL*pf;
IRC=IL*sind(phi);
printf("\nP=1500kW \npf=0.85 (lagging) \nVL=2.2kV");
//For Delta-connected load
printf("\nP=sqrt(3)*VL*IL*cos(phi) \nIL=%.2f A",IL);
printf("\nIph=IL/sqrt(3)= %.2f A",Iph);
//AC=Active Component
printf("\nAC=Iph*cos(phi) =%.2f A",AC); //in each phase of load
//RC=Reactive Component
printf("\nRC=Iph*sin(phi) =%.2f A",RC); //in each phase of load
//For star-connected source
printf("\nIAC =%.2f A",IAC); // current of AC in each phase of source
printf("\nIRC =%.2f A",IRC); // current of RC in each phase of source