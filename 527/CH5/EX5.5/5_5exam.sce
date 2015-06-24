//Engineering and Chemical Thermodynamics
//Example 5.5
//Page no :234

clear ; clc ;
//Given
T_c = 425.2 ; //[K] ,From Appendix A.1
P_c = 37.9 * 10^5 ; //[N/m^2] ,From Appendix A.1
w = 0.199 ;// From Appendix A.1
A = 1.935 ; 
B = 36.915 * 10^-3 ;
C = -11.402 * 10^-6 ;
Ws = 2100 ; //[J/mol]
T1 = 353.15 ;//[K]
T2 = 393.15 ;//[K]
P1 =7.47 * 10^5 ;//[N/m^2] 
P2 = 18.9 * 10^5 ; //[N/m^2]
R = 8.314 ;
enth_dep1_0 = -0.413 ;// Table C.3,C.4 in Appendix C
enth_dep1_1 = -0.622 ;// Table C.3,C.4 in Appendix C
enth_dep1 = enth_dep1_0 + w * enth_dep1_1 ;//....E5.5B
enth_dep2_0 = -0.771 ;// Table C.3,C.4 in Appendix C 
enth_dep2_1 = -0.994 ;// Table C.3,C.4 in Appendix C
enth_dep2 = enth_dep2_0 + w * enth_dep2_1 ;//....E5.5C

T1_r = T1 / T_c ;
P1_r = P1 / P_c ;
T2_r = T2 / T_c ;
P2_r = P2 / P_c ;

function y=f(T) , y = R * (A * T + B/2 * T^2 + C/3 * T^3)
endfunction
del_h = f(T2) - f(T1) ;//.....E5.5D

Del_h = -enth_dep1 * R * T_c + del_h + enth_dep2 * R * T_c ;
q = Del_h - Ws ;

disp(" Example: 5.5   Page no : 235") ;
printf("\n     Heat input = %d J/mol",q)