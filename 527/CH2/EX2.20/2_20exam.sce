//Engineering and Chemical Thermodynamics
//Example 2.20
//Page no :89

clear ; clc ;
//solution (a)
//Given data
Cv = 3/2 * 8.314 ;
Cp = 5/2 * 8.314 ;
n = 1; 
R = 8.314 ; 
T1 = 1000 ; //[K]
P1 = 10 ; //[bar]
T2 = 1000 ; //[K]
P2 = 0.1 ; //[bar]
T3 = 300 ; //[K]
T4 = 300 ; //[K]

k = Cp / Cv ;
P3 = P2 * (T3 / T2)^(k/(k-1)); //[bar]
P4 = P1 * (T4 / T1)^(k/(k-1)) ; //[bar]

// (1)
  del_U_12 = 0 ; // As process 1-2 is isothermal 
  W_12 = n * R * T1 * log(P2 / P1);
  Q_h_12 = W_12 ;
  disp(" Example: 2.20   Page no : 89") ;
printf('(a)\n    (1)\n           del_U = %d J',del_U_12) ;
printf('\n           Work  = %d J',W_12) ;
printf('\n           Heat = %d J',Q_h_12) ;

//(2)
   Q_23 = 0 ; // As adiabatic process
   del_U_23 = n * Cv *(T3 - T2) ;
   W_23 = del_U_23 ;
printf('\n     (2)\n           del_U  = %g J',del_U_23) ;
printf('\n           Work (J) = %d J',W_23) ;
printf('\n           Heat (J) = %d J',Q_23) ;

//(3)
   del_U_34 = 0 ; // As isothermal process
   W_34 = n * R * T3 * log(P4 / P3) ; // Eqn E2.20.A
   Q_c_34 = del_U_34 - W_34 ;
printf('\n     (3)\n           del_U = %g J',del_U_34) ;
printf('\n           Work = %d J',W_34) ;
printf('\n           Heat = %d J',Q_c_34) ;

//(4)
    Q_41 = 0 ; // As adiabatic process
    del_U_41 = n * Cv * (T1 - T4) ;
    W_41 = del_U_41 ;
printf('\n     (4)\n           del_U = %g J',del_U_41) ;
printf('\n           Work = %d J',W_41) ;
printf('\n           Heat = %d J',Q_41) ;

//Solution (b)
//Users can refer figure E2.20

//Solution (c)
  W_total = W_12 + W_23 + W_34 + W_41 ;
  Q_absor = Q_h_12 ;
  effi = W_total / Q_absor ;
printf('\n\n(c)   efficiency = %g',effi)

//Solution (d)
x = 1 - T3 / T1 ;
printf('\n\n(d)   1 - Tc/Th = %g',x);
disp("    i.e  Efficiency = 1 - Tc/Th");

//Solution (e)
disp("(e) The process can be made more efficient by raising Th or by   lowering Tc .");
disp("Table E2.20B") ;
disp("       T(K)       P(bar)   v(m^3/mol)") ;
P = [P1 , P2 , P3 , P4 ] ;
T = [T1 , T2 , T3 , T4 ] ;
for i = 1:4
    v(i) = R * T(i) * 10^-5/ P(i) ;
    printf("\n       %d    %.4f    %f \n",T(i) ,P(i) ,v(i)) ;
end
