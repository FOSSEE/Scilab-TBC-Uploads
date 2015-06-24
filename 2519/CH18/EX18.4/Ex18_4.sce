clc
clear
//Initialization of variables
pc=0.6982 //psia
pe=0.1217 //psia
m=200 //gal/min
qual=0.98
h1=23.07 //Btu/lbm
h2=8.05  //Btu/lbm
hw=1071.3
//calculations
rp=pc/pe
m2=m/0.01602 *0.1388 //Conversion of units 
m2=1670
dh=15.02
Qa=m2*(h1-h2)
h3=h2 + qual*hw
m3=Qa/(h3-h1)
v=0.016+ qual*2444
C=m3*v
//results
printf("Pressure ratio = %.2f",rp)
printf("\n Heat = %d Btu/min",Qa)
printf("\n Water make up required = %.2f lbm/min",m3)
printf("\n Volume of vapor entering ejector = %d cfm",C)
//The answers are a bit different due to rounding off error in textbook

