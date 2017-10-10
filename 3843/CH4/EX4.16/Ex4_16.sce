// Example 4_16
clc;funcprot(0);
// Given data
P_1=7;// The inlet pressure in kPa
T_1=420;// The inlet temperature in °C
d_1=200;// The inlet diameter in mm
V_1=400;// The inlet velocity in m/s
V_2=700;// The exit velocity in m/s
c_p=1000;// J/kg.K
R=287;// J/kg.K
k=1.4;// The specific heat ratio

// Calculation
// (a)
T_2=((V_1^2-V_2^2)/(2*c_p))+T_1;// The exit temperature in °C
// (b)
rho_1=(P_1*10^3)/(R*(T_1+273));// kg/m^3
A_1=(%pi*(d_1/1000)^2)/4;// m^2
m=rho_1*A_1*V_1;// The mass flux in kg/s
// (c)
rho_2=rho_1*((T_2+273)/(T_1+273))^(1/(k-1));// The density at the exit in kg/m^3
d_2=sqrt((rho_1*(d_1/1000)^2*V_1)/(rho_2*V_2));// The exit diameter in m
printf("\n(a)The exit temperature,T_2=%3.0f°C \n(b)The mass flux,m=%0.4f kg/s \n(c)The exit diameter,d_2=%0.3f m or %3.0f mm",T_2,m,d_2,d_2*10^3);
