clc 
//Initialization of variables
d=0.05*10^-3 //m
T=72*10^-3 //N/m
P=101 //kN/m^2
//calculations
Pi=P*1000 + 2*T/(d/2)
//results
printf("Pressure = %.2f kN/m^2",Pi/1000)
