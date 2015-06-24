clc
clear
//Initialization of variables
Hvap=338.14 //kJ/kg
T=409.3 //K
//calculations
dss=Hvap/T
dg=0
//results
printf("change in entropy and gibbs energy of system are %.3f kJ/kg K and %d kJ/kg respectivey",dss,dg)
printf("\n change in entropy and gibbs energy of universe are %.3f kJ/kg K and %d kJ/kg respectivey",-dss,-dg)
