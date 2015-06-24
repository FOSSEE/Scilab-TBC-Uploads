//Engineering and Chemical Thermodynamics
//Example 4.6
//Page no :190

clear ; clc ;
//Given 
Pc_B = 49.1 ; // [bar] , From table
Pc_T = 42.0 ; // [bar] , From table
Pc_C = 40.4 ; // [bar] , From table
Tc_B = 562 ; // [K] , From table
Tc_T = 594 ; // [K] , From table 
Tc_C = 553 ; // [K] , From table
R = 8.314 ;

A = [Pc_B , Tc_B ; Pc_T , Tc_T ; Pc_C , Tc_C];
for i=1:3
    A(i,3) = 27/64 * (R * A(i,2))^2 /( A(i,1) * 10^5) ;
    A(i,4) = R * A(i,2) / (8 * A(i,1) * 10^5) ;
end
disp(" Example: 4.6   Page no : 190") ;
disp("   P_c     T_c        a                    b ") ;
disp(A) ;
disp("                     The attractive interactions of all three compounds are dominated by dispersion interactions ( parameter a) , while size affects parameter b .")