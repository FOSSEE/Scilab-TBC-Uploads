// Example 16_12
clc;funcprot(0);
// Given data
p_os=7.00;// MPa
T_os=2000;// °C
D_t=0.0200;// m
D_e=0.100;// m
k=1.40;// The specific heat ratio
R=286;// m^2/(s^2.K)
g_c=1;// The gravitational constant

// Calculation
// (a)
A_t=(%pi*D_t^2)/4;// m^2
mdot=(0.0404*(p_os*10^6)*A_t)/sqrt(T_os+273.15);// kg/s
// (b)
A_r=(D_e/D_t)^2;// (A_r=A_exit/A*)
M_e=5.00;// Mach number at exit
// Assume p_exit/p_os=p_r
p_r=1.89*10^-3;// Pressure ratio
// Assume T_exit/T_os=T_r
T_r=0.16667;// Temperature ratio
p_e=p_r*p_os*10^3;// The exit pressure in kN/m^2
T_exit=T_r*(T_os+273.15);// K
c_e=sqrt(k*g_c*R*T_exit);// The velocity of sound at the exit in m/s
V_exit=c_e*M_e;// m/s
// (c)
M_x=5.0;// The Mach number
p_x=13.23;// kN/m^2
T_x=378.8;// K
// Table C.19 is a tabular version of these equations, and at Mx = 5.0, we again have a direct entry
M_y=0.415;// The Mach number 
// Assume p_osy/p_osx=p_ros
p_ros=0.06172;
// Assume p_y/p_x=p_rxy
p_rxy=29.00;
// Assume p_osy/p_x=p_rosyx
p_rosyx=32.654;
// Assume T_y/T_x=T_yx
T_yx=5.800;
p_osx=p_os*10^3;// kN/m^2
p_B=p_ros*p_osx;// The required back pressure in kN/m^2
// Alternatively
p_B=p_rosyx*p_x;// The required back pressure in kN/m^2
printf("\n(a)The mass flow rate required for supersonic flow in the diverging section,mdot=%1.2f kg/s \n(b)The Mach number, pressure,temperature and velocity at the exit of the diverging section with this massflow rate,M_exit=%1.2f,p_exit=%2.1f kN/m^2,T_exit=%3.1f K,V_exit=%4.0f m/s \n(c)The outside back pressure required to produce a standing normal shock wave at the exit of the diverging section,p_B=%3.0f kN/m^2",mdot,M_e,p_e,T_exit,V_exit,p_B);
