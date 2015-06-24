//Engineering and Chemical Thermodynamics
//Example 2.16
//Page no :81

clear ; clc ;
//Given data:
V_dot_2 = 0.001 ; //[m^3/kg]
v_cap_2 = 0.001 ; //[m^3/kg], Specific volume of water
z2 = 250 ; //[m] ; Taking ground as the reference level
e_cap_2 = 9.8 * z2 ; //[kg*m^2/s^2]

m_dot_2 = V_dot_2 / v_cap_2 ; //[kg/s]
//Neglecting the kinetic energy ,frictional losses ftrom energy balance  equation we have
W_dot_s = m_dot_2 * e_cap_2 * 10^-3 ;
disp(" Example: 2.16   Page no : 81") ;
printf('\n      Minimum power required is = %g kW',W_dot_s);
