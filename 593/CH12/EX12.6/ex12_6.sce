clear;
//clc();

// Example 12.6
// Page: 324
printf("Example-12.6  Page no.-324\n\n");

//***Data***//
Temp = 273.15+25;//[C]
P = 1;//[bar]
R = 8.314;//[J/(mol*K)]

// We have the reaction as 
//  H2 + 0.5O2 = H2O
// Using values of the Gibbs free energies of formation in the Table A.8(page 427) we have
g_H2O_0 = -237.1;//[kJ/mol]
g_O2_0 = 0;//[kJ/mol]
g_H2_0 = 0;//[kJ/mol]
// now
delta_g_0 = g_H2O_0 - 0.5*g_O2_0-g_H2_0;//[kJ/mol]
// expressing delta_g_0 in [J/mol] 
delta_g_1 = delta_g_0*1000;//[J/mol]

// and 
K = exp((-delta_g_1)/(R*Temp));

// And we have 
// K = [a_H2O]/([a_H2]*[a_O2]^(0.5))
// Here we will again assume as in the previous example that we have an ideal solution of the ideal gases for which in equation 12.18 (page 320),we have 
// v_i*Y_i = phi = 1.00 , and that for each reactant or product f_i_0 = 1 bar, putting all the values and simplifying 

// K = [y_H2O]/([y_H2]*[y_O2]^(0.5))*((1 bar)/P)^(0.5)
// Choosing oxygen as the selected reactant, and assuming that we begin with 0.5 mol of oxygen and 1 mol of hydrogen,
// we have the stoichiometric coefficients of -1, -0.5 and +1 
// and 
n_T_0 = 1.5;//[mol]
// Also summation(v_i) = -0.5

// Thus 
// K = [e/(1.5-0.5*e)]/([(1-e)/(1.5-0.5*e)]*[(0.5-0.5*e)/(1.5-0.5*e)]^(0.5))

// Now 
//   deff('[y]=f(e)','y =[e/(1.5-0.5*e)]/([(1-e)/(1.5-0.5*e)]*[(0.5-0.5*e)/(1.5-0.5*e)]^(0.5))');
//   e = fsolve(.99999,f);
// e = (1-2.4e-28);

// So the equilibrium concentration of the hydrogen and oxygen are as
// y_H2 = [(1-e)/(1.5-0.5*e)];
// y_O2 = [(0.5-0.5*e)/(1.5-0.5*e)];
// These values are so less that scilab consol is displaying them zero, however we get
y_H2 = 2.4e-28;
y_O2 = 0.5*y_H2;

printf(" The equilibrium mol fraction of the hydrogen is   %0.3e\n",y_H2);
printf(" And the equilibrium mol fraction of the oxygen is %e",y_O2);