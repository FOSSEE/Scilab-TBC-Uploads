// Example 16_13
clc;funcprot(0);
// Given data
p_os=3.00;// atm
T_os=20.0;// °C
p_B=1.00;// atm
A_r=2.0;// The exit to throat area ratio fo r the nozzle
k=1.4;// The specific heat ratio
R=286;// m^2/(s^2.K)
g_c=1;// The gravitational constant

// Calculation
p_a=p_os*(2/(k+1))^(k/(k-1));// atm
// Since we are given Aexit/A* = A_E/A*= 2.00, we can find ME by inverting Eq. (16.23b).However, in this case, it is again much easier to use Table C.18 for this area ratio and read (approximately),
M_E=2.20;// The Mach number at exit
// Assume p_rEos=p_E/p_os
p_rEos=0.09352;
p_E=p_rEos*p_os;// atm
// Assume p_r=p_osy/p_osx
p_r=1.00/3.00;
// From Table C.19 at p_osy/p_osx=0.333
M_x=2.98;// The Mach number
M_y=0.476;// The Mach number
T_e=0.50813*(T_os+273.15);// K
c_exit=sqrt(k*g_c*R*T_e);// m/s
M_exit=M_E;// The Mach number at exit
V_exit=M_exit*c_exit;// m/s
printf("\nThe exit pressure,p_E=%0.3f atm\nThe exit temperature,T_exit=%3.2f K \nThe exit velocity,V_exit=%3.0f m/s",p_E,T_e,V_exit);
