// Three-Phase Circuits :example 6.8 :(pg 6.14)
VL=440;
P=50*10^3;
IL=90;
Iph=IL/sqrt(3);
pf=(P/(sqrt(3)*VL*IL));
S=sqrt(3)*VL*IL;
printf("\nVL=440 V \nP=50kW \nIL=90 A");
printf("\nVL=Vph=%.f V",VL);//For delta-connected load
printf("\nIph=IL/sqrt(3)=%.2f A",Iph);
printf("\nP=sqrt(3)*VL*IL*cos(phi)");
printf("\ncos(phi)=%.2f (lagging)",pf);
printf("\nS=sqrt(3)*VL*IL =%.2f VA",S);