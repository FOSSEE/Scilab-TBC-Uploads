// Three-Phase Circuits :example 6.9 :(pg 6.15)
IL=15;
P=11*10^3;
S=15*10^3;
VL=S/(sqrt(3)*IL);
Vph=VL/sqrt(3);
x=P/S;
phi=acosd(P/S);
Q=sqrt(3)*VL*IL*sind(phi);
Iph=IL;
Zph=Vph/Iph;
R=Zph*cosd(phi);
XL=Zph*sind(phi);
Vph1=VL;
Iph1=(Vph1/Zph);
IL1=sqrt(3)*Iph1;
P1=sqrt(3)*VL*IL1*cosd(phi);
Q1=sqrt(3)*VL*IL1*sind(phi);
printf("\nIL=15 A \nP=11kW \nS=15kVA ");
//For a star-connected load
printf("\nS=sqrt(3)*VL*IL \nVL=%.2f V",Vph);
printf("\ncos(phi)=P/S =%.3f",x);
printf("\nphi=%.2f degrees",phi); 
printf("\nQ=sqrt(3).VL.IL.sin(phi) = %.1f VAR",Q);
printf("\nIph=IL = %.f A",IL);
printf("\nZph=Vph/Iph = %.2f Ohm",Zph);
printf("\nR= Zph*cos(phi) =%.2f Ohm",R);
printf("\nXL=Zph*sin(phi)= %.2f Ohm",XL);
//If these coils are connected in Delta 
printf("\nCph =VL =%.2f V",VL);
printf("\nZph= %.2f Ohm",Zph);
printf("\nIph=Vph/Zph =%.2f A ",Iph1);
printf("\nIL=sqrt(3)*Iph =%.f A",IL1);
printf("\nP=sqrt(3)*VL*IL*cos(phi) =%.2f W",P1);
printf("\nQ=sqrt(3)*VL*IL*sin(phi) =%.2f VAR",Q1);



