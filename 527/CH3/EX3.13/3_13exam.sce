//Engineering and Chemical Thermodynamics
// Example 3.13
//Page no:137

clear ; clc ;
//Given 
Ws_real = -2.1 ; //[MW]
Ws_rev = -2.8 ; // [MW]
n_tur = Ws_real / Ws_rev ;
disp(" Example: 3.13   Page no : 137") ;
printf("\n     Isentropic efficiency of turbine = %.2f %%", n_tur * 100);