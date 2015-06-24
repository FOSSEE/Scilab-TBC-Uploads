//Engineering and Chemical Thermodynamics
//Example 2.11
//Page no :69

clear ; clc ;
//Given data:
m_1_v = 4.3 ; //[kg]
m_1_l = 50 ; //[kg]
u_cap_1_v = 2437.9 ; //[kJ/kg],From steam table
u_cap_1_l = 191.8 ; //[kJ/kg],From steam table
v_cap_1_v = 14.67 ; //[m^3],From steam table
v_cap_1_l = 0.001 ; //[m^3],From steam table

V2 = m_1_l * v_cap_1_l + m_1_v * v_cap_1_v ;
m_2_v = m_1_l + m_1_v ;
v_cap_2_v = V2 / m_2_v ; //[m^3/kg]

// From table this specific volume matches at
P2= 0.15 ; //[MPa]
//At this condition 
u_cap_2_v = 2519.6 ; //(kJ/kg)
Q = ((m_2_v * u_cap_2_v) -(m_1_l * u_cap_1_l + m_1_v * u_cap_1_v))*1000;
disp(" Example: 2.11   Page no : 69") ;
printf('\n      Minimum amount of heat required = %e J',Q);