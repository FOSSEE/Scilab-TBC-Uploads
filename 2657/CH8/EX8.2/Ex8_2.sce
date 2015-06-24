//Calculation of relative fuel air ratio by volume
clc,clear
//Given:
pCO2=13/100 //Composition of Carbon di oxide in dry exhaust gas
//Solution:
p_v=21/100 //Composition of Oxygen in air by volume
C=12 //Atomic mass of Carbon(C)
H=1 //Atomic mass of Hydrogen(H)
O=16 //Atomic mass of Oxygen(O)
//Combustion equation
//  [C8H18] + a[O2] + (1-p_v)/p_v*a[N2] = x[CO2] + y[H2O] + z[O2] + w[N2]
//On balancing the reaction
x=8,y=9 //Coefficients of combustion equation
function M=f(a) //Defining the function, M of coefficient a for calculation of a
    z=a-x-y/2 //On balancing O
    w=(1-p_v)/p_v*a //On balancing N
    M=x/(x+z+w)-pCO2
endfunction
//Since, Composition of CO2 calculated from the equation must be equal to the given composition of CO2
//Thus, function M solve for zero to get value of a
a=fsolve(1,f) //Moles of air required
A_F_act=a/p_v //Air fuel ratio by volume
//For chemically correct mixture
a=x+y/2 //Moles of air required
A_F_cc=a/p_v //Chemically correct air fuel ratio
ratio=(1/A_F_act)/(1/A_F_cc)*100 //Ratio of actual to chemically correct fuel air ratio by volume
//Results:
printf("\n The ratio by volume of fuel to air supplied = 1/%.0f",A_F_act)
printf("\n The volume fuel air ratio = %.1f percentage of chemically correct ratio\n",ratio)
