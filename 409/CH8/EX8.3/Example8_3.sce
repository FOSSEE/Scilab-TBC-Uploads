clear;
clc;
// Example 8.3
printf('Example 8.3\n\n');
// Page no. 202
// Solution

// Basis : 1 hr so F  = 1000 kg
F = 1000 ;// feed rate-[kg/hr]
P = F/10 ;// product mass flow rate -[kg/hr]

n_un = 9 ;// Number of unknowns in the given problem
n_ie  = 9 ;// Number of independent equations
d_o_f =  n_un-n_ie ;// Number of degree of freedom
printf('Number of degree of freedom for the given system is  %i .\n',d_o_f);

//  Overall mass balance: F  =  P+B
B =  F-P ;// bottom mass flow rate -[kg/hr]
printf('\n Bottom mass flow rate -              %.1f kg \n',B);

// Composition of bottoms by material balances
m_EtOH = 0.1*F-0.6*P ;// By EtOH balance-[kg]
m_H2O = 0.9*F - 0.4*P ;// By H2O balance-[kg]
total  = m_EtOH+m_H2O ;//[kg]
f_EtOH = m_EtOH/total ;// Mass fraction of EtOH
f_H2O = m_H2O/total ;// Mass fraction of H2O

printf(' Mass of EtOH in bottom -             %.1f kg \n',m_EtOH);
printf(' Mass of H2O in bottom -              %.1f kg \n',m_H2O);
printf(' Mass fraction of EtOH in bottom -    %.3f \n',f_EtOH);
printf(' Mass fraction of H2O in bottom -     %.3f \n',f_H2O);