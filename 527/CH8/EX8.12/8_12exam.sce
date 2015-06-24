//Engineering and Chemical Thermodynamics
//Example 8.12
//Page no :395

clear ; clc ;
//Given 
H_O2 = 44253.9 ;//[bar] , From table 8.1
p_O2 = 0.21 ; //[bar]

x_O2 = p_O2 / H_O2 ;
v_H2O = 1/(1/0.001 * 1/0.018 * 0.001 );
_O2_ = x_O2 / v_H2O ; //[M]
disp(" Example: 8.12   Page no : 395") ;
printf("\n     Mole fraction of O2 = %g",x_O2 ) ;
printf("\n     Concentration of O2 = %g M ",_O2_) ;
