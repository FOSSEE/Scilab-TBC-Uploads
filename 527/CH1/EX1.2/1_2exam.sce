//Engineering and Chemical Thermodynamics
//Example 1.2
//Page no :25

clear ; clc 
P = 1.4 ; // [MPa]
T = 333 ; //[K]

//Given values are
T1 = 320 ; //[K]
T2 = 360 ; //[K]
P_low = 1 ; //[MPa]
P_high = 1.5 ; //[MPa]
V_cap_T1_P1 = 0.2678 ;
V_cap_T2_P1 = 0.2873 ;
V_cap_T1_P1_5 = 0.1765 ;
V_cap_T2_P1_5 = 0.1899 ;

//At P = 1 MPa
V_cap_T333_P1 = V_cap_T1_P1 + (V_cap_T2_P1 - V_cap_T1_P1)*((T - T1)/(T2- T1)); //[m^3/kg]

//Similarly at P=1.5 MPa
V_cap_T333_P1_5 = V_cap_T1_P1_5 + (V_cap_T2_P1_5 - V_cap_T1_P1_5)*((T - T1)/(T2 - T1)); //[m^3/kg]

//At T=333*C
V_cap_P1_5 = V_cap_T333_P1_5 ;
V_cap_P1 = V_cap_T333_P1 ;
V_cap_P1_4 = V_cap_P1 + (V_cap_P1_5 - V_cap_P1)*((P - P_low)/(P_high - P_low)) ; //[m^3/kg]
disp(" Example: 1.2   Page no : 25") ;
printf('\n       Required specific volume = %g m^3/kg',V_cap_P1_4);