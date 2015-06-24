//chapter 12
//example 12.13
//page 499
printf("\n")
printf("given")
Ie2=2*10^-3;hfe=50;R5=3.3*10^3;Rl=100;hfc2=51;R3=12*10^3;
re=26*10^-3/Ie2
hic=hfe*re
Zi2=hic+hfc2*((Rl*R5)/(Rl+R5))
Av1=-(hfe*((R3*Zi2)/(R3+Zi2)))/hie
Av2=1
disp("overall voltage gain is Av=Av1*Av2")
Av=Av1*Av2