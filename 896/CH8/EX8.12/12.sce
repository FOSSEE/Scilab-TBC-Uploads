clc
//Example 8.12
//Calculate the reservoir temperature and the pressure of air around the aircraft
gama=1.4//dimentionless
Ma=2//dimentionless (Mach number)
To=273.15//K
Tr=To*(Ma^2*(gama-1)/2+1)//K
printf("the reservoir temperature of air around the aircraft is %f K\n",Tr);
P1=50//KPa
Pr=P1*(Tr/To)^(gama*5/2)//KPa
printf("The pressure of air around the aircraft is %f KPa",Pr);