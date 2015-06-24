//Engineering and Chemical Thermodynamics
//Example 8.5
//Page no :378

clear  ; clc;
//Given
P1_sat = 0.72 ; //[bar]
P2_sat = 0.31 ; //[bar]
A = 3590 ;
B = -1180 ;
R = 8.314 ;
T = 70 + 273 ;//[K]
function y85 = f85(x1) , y85 = -.48 + ( x1 * exp((A + 3*B) * (1 - x1)^2 / (R * T) - 4 * B * (1 - x1)^3  / (R * T)) * P1_sat) / ( x1 * exp((A + 3*B) * (1 - x1)^2 / (R * T) -4 * B * (1 - x1)^3  / (R * T)) * P1_sat +(1 - x1) * exp((A - 3*B) * x1^2 / (R * T) -4 * B * x1^3  / (R * T)) * P2_sat ) ; 
endfunction
y = fsolve([0.1],f85);
x1 = y ;
P = ( x1 * exp((A + 3*B) * (1 - x1)^2 / (R * T) - 4 * B * (1 - x1)^3  / (R * T)) * P1_sat) + (1 - x1) * exp((A - 3*B) * x1^2 / (R * T) -4 * B * x1^3  / (R * T)) * P2_sat ;
disp(" Example: 8.5   Page no : 378") ;
printf("\n     The value of x1 = %.3f\n\n",y) ;
printf("      Pressure = %.2f bar",P) ;