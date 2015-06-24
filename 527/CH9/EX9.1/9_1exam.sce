//Engineering and Chemical Thermodynamics
//Example 9.1
//Page no :440

clear ; clc ;
n_o_CH3OH = 1 ; //[mol]
n_o_H2O = 3 ; //[mol]
S = 0.87 ;
n_CH3OH = 1 - S ;
n_H2O = 2 - S ;
n_CO2 = S ;
n_H2 = 3 * S ;
n_v = n_CH3OH + n_CO2 + n_H2O + n_H2 ; 

y_H2 = n_H2 / n_v ;
disp(" Example: 9.1   Page no : 440") ;
printf("\n     No of moles of H2 produced for 1mol of CH3OH = %.3f mol" , n_H2)
printf("\n     Mole fraction of H2 = %.2f" , y_H2) ;
