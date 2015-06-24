//Engineering and Chemical Thermodynamics
// Example 3.16
//Page no:144

clear ; clc ;
//Given
P_1 = 120 * 10^3 ; //[N]
P_2 = 900 * 10^3 ; //[N]
h_4 = 25.486 ; //[kJ/mol], From table
h_1 = h_4 ;
h_2 = 39.295 ; //[kJ/mol], From table
S_2 = 177.89 ;  //[kJ/molK], From table
S_3 = S_2 ;  //[kJ/mol]
h_3 = 43.578 ; //[kJ/mol] , Enthalpy corresponding to S3 value which     equales to S2
Q_dot_c_des = 10 ; //[kW]

q_c = h_2 - h_1 ;
Q_dot_c = h_2 - h_1 ;
W_dot_c = h_3 - h_2 ;

COP = Q_dot_c / W_dot_c ;
n_dot = Q_dot_c_des / q_c ;
disp(" Example: 3.16   Page no : 144") ;
printf("\n     COP of the refrigerator is = %.2f \n\n     Mass flow rate needed = %.3f mol/s",COP,n_dot)