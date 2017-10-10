//Example 12_15
clc;clear;
//Properties
k=1.4;
C_p=1.005;// kJ/kg*K
R=0.287;// kJ/kg*K
// given values
D=0.15;// m
V_1=80;// m/s
T_1=550;// K
P_1=480;// kPa
HV=42000;// kJ/kg
AF=40;

//Calculation
rho_1=P_1/(R*T_1);// kg/m^3
A=%pi*D^2*V_1;// m^2
m_air=rho_1*A*V_1; // kg/s
m_f=m_air/AF;// kg/s
Q=m_f*HV;// kW
q=Q/m_air;// kJ/kg
T_01=T_1+(V_1^2/(2*C_p*1000));// K
c_1=sqrt(k*R*T_1); // m/s
Ma_1=V_1/c_1;
T_02=+(q+C_p);// K
// From Table A-15
T_c=T_01/0.1291;// K
T_c1=T_02/T_c;
//Using T_c1 value & From Table A-15
Ma_2=0.3142;
printf('The exit Mach number ,Ma_2=%0.4f \n',Ma_2);
T_2=2.848*T_1;// K
printf('The exit temperature,T_2=%0.0f K\n',T_2);
P_2=0.9142*P_1;// kPa
printf('The exit pressure ,P_2=%0.0f kPa\n',P_2);
V_2=3.117*V_1;// m/s
printf('The exit velocity ,V_2=%0.0f m/s\n',V_2);
