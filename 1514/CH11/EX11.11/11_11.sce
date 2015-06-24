//chapter 11
//example 11.11
//page 334
clear all;
clc ;
//given
Rl=0.100;//load resistance in kohm
R1=68;R2=27;R3=5.6;R5=3.3;//kohm
hie=0.5;hic=hie;
hfe=50;
hfe1=50;
hfc=1+hfe;
Zi=round(1000/(1/R1+1/R2+1/hie));
printf("\ninput impedance(Zi)=%d ohm",Zi)

Zo1=((hic+R3)/hfc);
Zo=1000*(Zo1*R5)/(Zo1+R5);
printf("\noutput impedance(Zo)=%d ohm",Zo);

Zi2=((R5*Rl)/(R5+Rl))*hfc+hic;

Av1=-(hfe1*((R3*Zi2)/(R3+Zi2)))/hie;
Av2=1;
Av=Av1*Av2;
printf("\noverall voltage gain(Av)=%d",Av);


