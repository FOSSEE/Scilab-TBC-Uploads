
// Theory and Problems of Thermodynamics
// Chapter 6
// Thermodynamic Potentials and Availability
// Example 5

clear ;clc;

//Given data
VA = 1          // volume of tank A in m^3
NA = 5          // number of moles of A in kmol
TA = 600        // temperature of Tank A in K
NB = 3          // number of moles of B in kmol
TB = 400        // temperature of Tank B in K
R = 8.314       // universal gas constant

// Calculations
UAo = 3*NA*R*TA/2        // internal energy of gas in Tank A
UBo = 3*NB*R*TB/2        // internal energy of gas in Tank B

U = UAo + UBo           // Total internal energy in MJ

// the criteria for thermal equilibrium is 1/TA = 1/TB
// 3*NA*R/2*UA = 3*NB*R/2*UB
// NA/UA = NB/UB => 5/UA=3/UB       (A)
// UA+UB=UAo+UBo = 52.278MJ         (B)

// solving equations simultanesously
function[f]=F(x)
    f(1)=5/x(1)-3/x(2)
    f(2)=x(1)+x(2)-52.278
endfunction
x = [1,1];
y = fsolve(x,F);
UA = y(1);
UB = y(2);
TA = 2*UA/(3*NA*R) * 1000;
TB = TA;

// Output Results
mprintf('UA = %6.3f MJ' ,y(1));
mprintf('\n UB = %6.3f MJ' ,y(2));
mprintf('\n TA = %6.0f K' ,TA);
mprintf('\n TB = %6.0f K' ,TB);



