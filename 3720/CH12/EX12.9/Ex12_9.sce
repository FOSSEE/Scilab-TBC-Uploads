// Example 12_9
clc;clear;funcprot(0);
//From example 12_7
//Given values
P_0=1000;// kPa;
T_0=800;// K
Ma_1=2;// Exit Mach number
a=20;// Throat area in cm^2
//Properties
R=0.287;// kJ/kg.k
C_p=1.005;// kJ/kg.k
k=1.4;//The specific heat ratio of air 

// Calculation
//(a)
//From example 12_7
P_01=1.0;// MPa
P_1=0.1278; // MPa
T_1=444.5;// K
rho_1=1.002;// kg/m^3
// From table A-14,For Ma_1=2,we read
Ma_2=0.5774
P_02=0.7209*P_01;// MPa
printf('(a)The stagnation pressure,P_02=%0.3f MPa\n',P_02);
P_2=4.5000*P_1;// MPa
printf('The static pressure,P_2=%0.3f MPa\n',P_2);
T_2=1.6875*T_1;// K
printf('The static temperature,T_2=%0.0f K\n',T_2);
rho_2=2.6667*rho_1;// kg/m^3
printf('The static density,rho_2=%0.2f kg/m^3\n',rho_2);

//(b)
//gradS=s2-s1
gradS=(C_p*(log(T_2/T_1)))-(R*log((P_2/P_1)));
printf('(b)The entropy change across the shock,s2-s1=%0.4f kJ/kg.K\n',gradS);

//(c)
c_2=sqrt(k*R*T_2*1000);// The speed of sound at the exit conditions in m/s
V_2=Ma_2*c_2;
printf('(c)The exit velocity,V_2=%0.0f m/s\n',V_2);

//(d)
//The mass flow rate in this case is the same as that determined in Example 12_7:
V_1=517.5;// m/s
rho_c=2.761;// kg/m^3
m=rho_c*(a*10^-4)*V_1;// kg/s
printf('(d)The mass flow rate,m=%0.2f kg/s\n',m);
