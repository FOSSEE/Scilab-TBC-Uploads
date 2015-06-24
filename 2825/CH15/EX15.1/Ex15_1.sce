//Ex15_1 Pg-773
clc

Pc=10000 //carrier input power in watt
m=30/100 //modulation of 30%

disp("Total power = carrier power*(1+m^2/2)")
Pt=Pc*(1+m^2/2) //total power
printf("             = %.2f kW",Pt*1e-3)
