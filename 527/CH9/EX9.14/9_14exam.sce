//Engineering and Chemical Thermodynamics
//Example 9.14
//Page no :466

clear  ; clc ;
//Given 
E_0_c = 0.34 ; //[V]
E_0_a = -1.23 ; //[V]
T = 298 ; // [K]
pH = 1 ;
z = 2 ;
Cu2 = 0.07 ;
F = 96485 ; //[C/mol e-]
R = 8.314 ;

E_0_rxn = E_0_c + E_0_a ;
E = E_0_rxn + 2.303 * R * T * 2 * pH / (z * F) + R * T * log(Cu2) / (z * F) ;
disp(" Example: 9.14   Page no : 466") ;
printf("\n    Del_E_0_rxn = %.2f ",E_0_rxn ) ;
printf("\n\n   We have to apply potential greater than %.2f V",-E) ;