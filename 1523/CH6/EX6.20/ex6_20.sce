// Three-Phase Circuits :example 6.20 :(pg 6.22 & 6.23)
VL=400;
Zph=100;
Vph=(VL/sqrt(3));
Iph=(Vph/Zph);
pf=1;
P=(sqrt(3)*VL*Iph*pf);
Iph1=(VL/Zph);
IL1=(sqrt(3)*Iph1);
P1=(sqrt(3)*VL*IL1*pf);
I1=(VL/200);
Pa=(VL*I1);
I2=(VL/100);
Pb=(VL*I1*I2);
printf("\nVL=400 V \nZph = 100 Ohm");
//For a star connected load
printf("\nVph=VL/sqrt(3) =%.2f V",Vph);
printf("\nIph = VL/Zph =%.2f A",Iph);
printf("\nIL=Iph =%.2f A",Iph);
printf("\ncos(phi)=1 \nP=sqrt(3).VL.IL.cos(phi) =%.2f W",P);
//For a delta connected load
printf("\nVph=VL=%.f V",VL);
printf("\nIph=Vph/Zph =%.f A",Iph1);
printf("\nIL=sqrt(3)*Iph =%.2f A",IL1);
printf("\nP=sqrt(3)*VL*IL*cos(phi) =%.2f W",P1);
//When resistors are open circuited
//(i)Star connection
printf("\nI= %.f A",I1);//Current in lines
printf("\nP=%.f W",Pa);//Power taken from mains
//(ii)Delta connection
printf("\nI=%.f A",I2);//Current in each phase
printf("\nP=%.f W",Pb);//Power taken from mains