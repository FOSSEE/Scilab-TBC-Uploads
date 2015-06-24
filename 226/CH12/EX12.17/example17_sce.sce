//chapter 12
//example 12.17
//page 509
printf("\n")
printf("given")
re=22;hfe=100;R3=3.9*10^3;Yfs=4000*10^-6;R6=8.2*10^3;Rl=80*10^3;
Zi2=hfe*re
Av1=-Yfs*((R3*Zi2)/(R3+Zi2))
Av2=-(hfe*((R6*Rl)/(R6+Rl)))/Zi2
disp("overall voltage is Av=Av1*Av2")
Av=Av1*Av2