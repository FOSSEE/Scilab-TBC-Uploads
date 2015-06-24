
clc
//initialization of variables
Q = 18 // m^3/hr
z = 2.80 //m
T = 140//C
T1 = 240 //C
T2 = 20 //C
p= 900 //kg/m^3
Cp = 2 // W/kg-K
d = 0.05//m
//Calculations
A = %pi*(d^2)/4
v = Q*(1/(3600*40))/(A)
U = (v*p*Cp*d/(4*z))*(log((T1-T2)/(T1-T)))//W/m^2-K
DeltaT = ((T1-T2)+(T1-T))/2//C
q = (Q*(1/(3600*40))*p*Cp/(%pi*d*z))*(T-T2)//W/m^2-K
U1 = q/DeltaT//W/m^2-K
//Results
printf("The overall heat transfer co efficient based on local temp difference is %.2f W/m^2-K",U)
printf("\nThe overall heat transfer co efficient based on average temp difference is %.2f W/m^2-K",U1)
