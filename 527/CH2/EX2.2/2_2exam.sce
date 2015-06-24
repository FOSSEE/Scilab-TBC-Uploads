//Engineering and Chemical Thermodynamics
//Example 2.2
//Page no :36

clear ; clc

//Given data
V2 = 14 ; // [m/s]
u_cap_l1 = 104.86 ; //[kJ/kg],at 25*C internal energy of saturated water
u_cap_l_t25 = 104.86 ; //[kJ/kg], From steam table 
u_cap_l_t30 = 125.77 ; //[kJ/kg], From steam table
T1 = 25 ; //[*C]
T2 = 30 ; //[*C]

//For unit mass change in kinetic energy
Delta_e_cap_k = 1/2 * V2^2 * 10^-3 ; //[kJ/kg]

Delta_u_cap = Delta_e_cap_k ;

//For final state of water:
u_cap_l2 = Delta_u_cap + u_cap_l1 ;

//From table

x = (u_cap_l2 - u_cap_l_t25) / (u_cap_l_t30 - u_cap_l_t25) ;
T_unknown = T1 + x*(T2 - T1) ;
disp(" Example: 2.2   Page no : 36") ;
printf('\n        Final temperature of water = %g *C',T_unknown);