clear ;
clc;
//Page No. 419
// Example 13.8
printf('Example 13.8\n\n');
// Solution fig E13.8

T1c = 15 ;// Temperature of F & P -[degree C] 
T1 =  273  +  T1c ;// Temperature of F & P -[K] 
P1 =  105 ;// Pressure of F & P -[kPa]
// F analysis
F_CO2 = 1.2/100 ;// Volume fraction 
F_odr = 98.8/100 ;// Volume fraction 

// P analysis
P_CO2 = 3.4/100 ;// Volume fraction 
P_odr = 96.6/100 ;// Volume fraction 
 
Tc_CO2 =  7 ;//Temperature CO2 -[degree C] 
T_CO2 =  273 +  Tc_CO2 ;// Temperature CO2 -[K]
P_CO2 =  131 ;// Pressure of CO2 -[kPa]
CO2 = 0.0917 ;// Volume flow rate of CO2-[cubic metre/min]
// Convert given volume flow rate of CO2 at temperature of F & P
nw_CO2 = (CO2 *  T1 *  P_CO2)/(T_CO2 *  P1) ;// volume flow rate of CO2 at temperature of F & P-[cubic metre]
// Solve P & F by following eqns. obtained by component balance of CO2 and total balance
// F(F_odr) = P(P_odr) - others balance
// F +  nw_CO2 = P - Total balance
// Solving by matrix method
a = [F_odr -P_odr;1 -1];// Matrix formed by coefficients of unknown
b = [0;-nw_CO2] ;// Matrix formed by constants
x = a\b ;// matrix of solution, x(1) = F;x(2) = P
F = x(1) ;//Volume flow rate of entering gas-[cubic metre/min]
P = x(2) ;//Volume flow rate of product [cubic metre/min]
printf('Volume flow rate of entering gas is %.2f cubic metre/min',F);
