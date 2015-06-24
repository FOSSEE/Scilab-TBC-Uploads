clc
clear
//Initialization of variables
k=1.4
R=53.3 //lb-ft/lb R
pu=6.43 //psia
Tu=244 //R
Nmu=2.44
//calculations
Nmd = sqrt(((k-1)*Nmu^2 +2)/(2*k*Nmu^2 - (k-1)))
pd=pu*(2*k*Nmu^2 - (k-1))/(k+1)
Td=Tu*(2*k*Nmu^2 - (k-1))/(k+1) *((k-1)*Nmu^2 +2)/((k+1)*Nmu^2)
//results
printf("Mach number upstream = %.3f ",Nmd)
printf("\n Pressure upstream = %.1f psia",pd)
printf("\n Temperature upstream = %.1f R",Td)
