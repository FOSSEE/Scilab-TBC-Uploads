//Engineering and Chemical Thermodynamics
//Example3.7
//Page no:128

//Solution:(a)
clear ; clc ;
//Given
V_1 = 0.5 ; //[m^3]
P_1 = 150 ; //[kPa]
T_1 = 20 + 273 ; //[K]
P_2 = 400 ; // [kPa]
Cp = 2.5 * 8.314 ;
Q = V_1 * (P_1 - P_2);
disp(" Example: 3.7   Page no : 128") ;
printf("\n   (a)\n     Heat transferd = %g kJ\n\n",Q);

//Solution:(b) 
del_S_sys = (P_1 * V_1) / T_1 * -log(P_2 / P_1) ;
printf('   (b)\n      Entropy change of system = %.2f kJ/K \n',del_S_sys);
Q_surr = - Q ;
del_S_surr = Q_surr / T_1 ;
printf('      Entropy change of surrounding = %.2f kJ/K \n',del_S_surr) ; 
del_S_univ = del_S_sys + del_S_surr ;
printf('      Entropy change of universe =%.2f kJ/K \n',del_S_univ) ;

//Solution:(c)
disp("  (c)");
disp("       Since entropy of the universe increases , the process is irreverssible .")