clc
//initialisation of variables
clear
r= 1.4
R= 53.3 //ft lbf/lbm R
g= 32.2 //ft/sec^2
T1= 410 //R
v= 2500 //ft/sec
P1= 628 //lbf/in^2
//CALCULATIONS
v1= sqrt(r*g*R*T1)
Ma1= v/v1
Ts1= T1*(1+0.5*(r-1)*Ma1^2)
Ps1= P1*(1+0.5*(r-1)*Ma1^2)^(r/(r-1))
Ps2= Ps1*((r+1)/(2*r*Ma1^2-r+1))^(1/(r-1))*(0.5*(r+1)*Ma1^2/(1+0.5*(r-1)*Ma1^2))^(r/(r-1))
//RESULTS
printf ('acoustic velocity = %.f ft/sec',v1)
printf ('\n Match number = %.2f ',Ma1)
printf ('\n Stagnition temperature = %.f R',Ts1)
printf ('\n Stagnition pressure = %.f lbf/ft^2',Ps1)
printf ('\n Stagnition pressure = %.f lbf/ft^2',Ps2)
