//Engineering and Chemical Thermodynamics
//Example 5.4
//Page no :225

clear ; clc ;
//Given
P_1 = 9.43 * 10^5 ; //[N/m^2]
P_2 = 18.9 * 10^5 ; //[N/m^2]
T_1 = 80 + 273 ; //[K]
T_2 = 120 + 273 ; //[K]
A = 1.935 ;
B = 36.915 * 10^-3 ;
C = -11.402 * 10^-6 ;
T_c = 425.2 ; // [K]
P_c = 37.9 * 10^5 ;//[N/m^2]
R = 8.314 ;
del_h_1 = 1368 ; //[J/mol]
del_h_3 = -2542 ; //[J/mol]
Ws = 2100 ; //[J/mol]

a = 0.42748 * R^2 * T_c^2.5 / P_c ;
b = 0.08664 * R * T_c / P_c ;
 

  function y = f1 (v) , y  = R * T_1 / (v - b) - a / (sqrt(T_1) * v *(v + b)) - P_1;
  endfunction ;
za=  fsolve([0.001] , f1) ;

  function y = f2 (v) , y  = R * T_2 / (v - b) - a / (sqrt(T_2) * v *(v + b)) - P_2;
  endfunction ;
 zb=  fsolve([0.001] , f2) ;

   function y = f(T), 
       y = R * ( A * T + B/2 * T^2 + C/3 * T^3) ;
   endfunction ;

del_h_2 = f(T_2) - f(T_1) ;
del_h_total = del_h_1 + del_h_2 + del_h_3 ;
q = del_h_total - Ws ;


disp(" Example: 5.4   Page no : 225") ;
printf("\n          v1 = %f m^3/mol\n          v2 = %f m^3/mol",za ,zb ) ;
printf("\n\n     The heat input = %g J/mol",ceil(q));