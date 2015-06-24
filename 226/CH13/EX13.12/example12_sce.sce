//chapter 13
//example 13.12
//page 573
printf("\n")
printf("given")
Av=1000;f=100;hie=2*10^3;hfe=100;R8=12*10^3;Rl=120*10^3;R10=3.9*10^3;R6=Rl;R7=39*10^3;R3=R8;
Av1=sqrt(Av)
Av2=Av1;
R9=((R8*Rl)/(R8+Rl))/Av2
R9=330;//use standard value
Av2=((R8*Rl)/(R8+Rl))/R9
Av1=Av/Av2
Zb=hie+R9*(1+hfe)
Zin=(R6*R7*Zb)/(R6*R7+R6*Zb+R7*Zb)
R4=((R3*Zin)/(R3+Zin))/Av1
R5=R10-R4