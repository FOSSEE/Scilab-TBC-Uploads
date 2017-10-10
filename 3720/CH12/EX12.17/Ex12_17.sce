//Example 12_17
clc;clear;
// Given values
V_1=85;// m/s
P_1=220;// kPa
T_1=450;// K
f=0.023;// The average friction factor for the duct
L=27;// m

// Properties
k=1.4;// Specific Heat ratio
C_p=1.005;// kJ/kg.K
R=0.287;// kJ/kg.K

// Calculation
c_1=sqrt(k*R*T_1*1000);// m/s
Ma_1=(V_1/c_1);
// From Table A-16,
fLbyDh1=14.5333;
D_h=0.05;// m
fLbyDh=(f*L)/D_h;
fLbyDh2=fLbyDh1-fLbyDh;
// The Mach number corresponding to this value of fL*/D is 0.42, obtained from Table A–16,
Ma_2=0.42;// The Mach number at the duct exit 
rho_1=(P_1)/(R*T_1);// kg/m^3
A=(%pi/4)*(D_h)^2;// m^2
m_air=rho_1*A*V_1;// kg/s
printf('\nThe Mach number at the duct exit=%0.2f \nThe mass flow rate of air=%0.3f kg/s',Ma_2,m_air);
L_max1=fLbyDh1*(D_h/f);// m
L_max2=fLbyDh2*(D_h/f);// m
printf('\nThe maximum length at inlet=%0.1f m \nThe maximum length at exit=%0.1f m',L_max1,L_max2);
