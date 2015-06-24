//Ex15_6 Pg-776
clc

Pc=10000 //carrier power in watt
m=0.9 //modulation factor
disp("We have")

disp("Total power = carrier power*(1+m^2/2)")
Pt=Pc*(1+m^2/2) //total power
printf("             = %.0f kW \n\n",Pt*1e-3)

printf("This will be the maximum power handeled by the transmitter.\n Now,increased unmodulated carrier power can be obtained by \n\n")
m=40/100 //modulation in terms of percentage
Pt=14000 //total power
Pc=Pt/(1+m^2/2) //neew carrier power
printf("        Pc = %.2f kW",Pc*1e-3)
