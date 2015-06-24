//Engineering and Chemical Thermodynamics
//Example 8.19
//Page no :418

clear ; clc ;
//Given
rho_w = 1000 ; // [kg/m^3]
g = 9.8 ; // [m/s^2]
h = 0.0071 ;//[m]
m_b = 1.93 * 10^-3 ; // [kg]
V = 520 * 10^-6 ; //[m^3]
R = 8.314 ;
T = 298 ;

PI = rho_w * g * h ;
C_b = m_b / V ;
MW_b = R * T * C_b / PI ;

disp(" Example: 8.19   Page no : 418") 
printf("\n      The molecular weight of the protein = %d kg/mol", MW_b );
