// Example 16_14
clc;funcprot(0);
// Given data
p_inlet=456.2;// kN/m^2
T_inlet=283.7;// K
p_exit=370.4;// kN/m^2
T_exit=260.1;// K
V_exit=474.8;// m/s
k=1.67;// The specific heat ratio for helium
R=2077.0;// m^2/(s^2.K)
g_c=1;// The gravitational constant

// Calculation
// (a)
c_osi=sqrt(k*g_c*R*T_inlet);// m/s
c_inlet=c_osi;// m/s
n_N=((((k-1)/2)*(V_exit/c_inlet)^2)/(1-((p_exit/p_inlet)^((k-1)/k))));// The nozzle’s efficiency
// (b)
C_v=sqrt(n_N);// The nozzle’s velocity coefficient
// (c)
R=2.077;// kJ/kg.K
rho_e=p_exit/(R*T_exit);// kg/m^3
M_exit=1.0;// The exit Mach number
T_os=T_inlet;// K
p_os=p_inlet;// kN/m^2
T_es=T_os*(2/(k+1));// K
rho_es=(p_os/(R*T_os))*[2/(k+1)]^(1/(k-1));// kg/m^3
V_es=sqrt(k*g_c*R*10^3*T_es);// m/s
C_d=(rho_e*V_exit)/(rho_es*V_es);// The nozzle’s discharge coefficient
printf("\n(a)The nozzle’s efficiency,n_N=%0.3f \n(b)The nozzle’s velocity coefficient,C_v=%0.3f \n(c)The nozzle’s discharge coefficient,C_d=%0.3f",n_N,C_v,C_d);
