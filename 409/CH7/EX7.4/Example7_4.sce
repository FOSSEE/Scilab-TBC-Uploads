clear ;
clc;
// Example 7.4
printf('Example 7.4\n\n');
//Page no. 180
// Solution

n_un= 7 ;// Number of unknowns in the given problem- 3 values of xi and 4 values Fi
n_ie = 5 ;// Number of independent equations
// Summary of independent equations
// Three material balances:CH4,C2H6 and N2
// One specified ratio: moles of CH4 to C2H6 equal 1.5 
// One summation of mole fraction in mixture equals 1
d_o_f = n_un-n_ie ;// No. of degree of freedom

printf('Number of degree of freedom for the given system is  %i .\n',d_o_f);