//Engineering and Chemical Thermodynamics
//Example 2.17
//Page no :82

clear ; clc ;
//Given data
n_dot = 10 ; //[mol/min]
del_h_vap_CO2 = 10400 ; //[J/mol]
A_CO2 = 5.457 ; //From appendix A.3
B_CO2 = 1.045 * 10^-3 ;
D_CO2 = -1.157 * 10^5 ;
A_air = 3.355 ; 
B_air = 0.575 * 10^-3 ;
D_air = -0.016 * 10^5 ;
T1 = 273 ; //[K]
T2 = 283 ; //[K]
T3 = 323 ; //[K]
T4 = 293 ; //{k}

function y=f1(T),y=8.314 * (A_CO2 * T + (B_CO2/2) * T^2 - D_CO2/T)
endfunction

sen_heat_CO2 = f1(T2) - f1(T1) ;
Q_dot = n_dot * (del_h_vap_CO2 + sen_heat_CO2) ; //[J/min]

function y=f2(T),y=8.314 * (A_air * T + B_air/2*T^2 - D_air /T)
endfunction
sen_heat_air = f2(T4) - f2(T3);
n_dot_air = - Q_dot / sen_heat_air ;
disp(" Example: 2.17   Page no : 82") ;
printf('\n       Air required = %g mol/min',n_dot_air);
    