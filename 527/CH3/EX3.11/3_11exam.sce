//Engineering and Chemical Thermodynamics
//Example 3.11
//Page no:131

clear ; clc ;
P_1 = 10 ; //[bar]
T_1 = 298 ; // [K]
P_2 = 1 ; //[bar]
T_2 = 298 ; // [K]
P_3 = 1 ; //[bar]
R = 8.314 ; // [J/mol K]
n = 4 ; //[mol]
X = 0.01 ;

//Step 1 :
del_S_sys = - R * log(P_2 / P_1);
del_S_surr = - R * (1 - P_2 / P_1) ;
del_s_univ_1 = del_S_sys + del_S_surr ; 
Del_S_univ_1 = n * del_s_univ_1 ;

//Step 2 :
Del_S_univ_2 = 0 ;
n_3 = n * P_3 / P_1 ;

//Step 3 :
n_out = n - n_3 ;
del_S_sys_3 = - n_out * R * log(X) ;
Del_S_univ_3 = del_S_sys_3 ; // Assuming the composition of air in the room does not noticeably change by the dilute addition of argon
Del_S_univ = Del_S_univ_1 + Del_S_univ_2 + Del_S_univ_3 ;

disp(" Example: 3.11   Page no : 131") ;
printf("\n       Total entropy change of universe = %.2f J/K \n\n",Del_S_univ) ;
disp("       No matter how slow the leak , the driving force for the expansion is finite . So the process canot be reverssible .")