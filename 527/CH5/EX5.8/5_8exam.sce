//Engineering and Chemical Thermodynamics
//Example 5.8
//Page no :241

clear ; clc ;
//Given 
T_c = 126.2 ; //[K] , From appendix A.1
P_c = 33.8 * 10^5 ; //[N/m^2] , From appendix A.1
w = 0.039 ;// From appendix A.1
enth_dep_1 = -2.81 ; // From table C.1 Appendix C
A = 3.28 ;// From Appendix A.2
B = 0.593 * 10^-3 ;// From Appendix A.2
del_h_dep_l = -5.1 ; 
del_h_dep_v = -0.1 ;
T1 = 151 ; //[K]
P1 = 100 * 10^5 ; //[N/m^2]
P2 = 1 * 10^5 ; //[N/m^2]
T2_r = 0.61 ; // From figure 5.4
T1_r = T1 / T_c ;
P1_r = P1 / P_c ;
P2_r = P2 / P_c ;

T2 = T2_r * T_c ; //[K]
function y=f(T),y = A * T + B/2 * T^2 
endfunction
x = 1 / T_c *(f(T2) - f(T1)) ;

y = enth_dep_1 - x ;

disp(" Example: 5.8   Page no : 241") ;
disp(y)
X = ( y - del_h_dep_l) / (del_h_dep_v - del_h_dep_l);
printf("\n   Quality = %.2f",X) ;