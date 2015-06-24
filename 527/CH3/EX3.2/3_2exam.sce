//Engineering and Chemical Thermodynamics
//Example 3.2
//Page no : 119

//Solution(a)
clear ; clc ; 
//Given 
del_U = 0 ; // As no work or heat transfered across its boundaries during the process 
T_1 = 500 ; // [K]
V1 = 1.6682 / 2 * 10^-3; // [m^3]
V2 = 2 * V1 ; 
del_S_sur = 0 ; // As no heat transfered across its boundaries during the process 
disp(" Example 3.2   Page no : 119")
disp("(a)");
disp("  For an ideal gas u = u(T only)") ; 
printf('\n   Final temperature = %g K \n\n',T_1);

//Solution(b)
q_rev = 8.314 * T_1 * log(V2/V1) ;
del_S_sys = q_rev / T_1 ;
del_S_univ = del_S_sys + del_S_sur ;
printf('(b)\n\n  Entropy change for universe = %.2f J/(molK)',del_S_univ);
