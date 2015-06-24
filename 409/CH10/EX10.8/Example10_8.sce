clear;
clc;
// Example 10.8
printf('Example 10.8\n\n');
// Page no. 287
// Solution

F = 16 ;// feed of CH4 -[kg]
CH4p = 100 ;//[%]
m_CH4 = 16 ;// mass of kmol of CH4-[kg]
mol_CH4 = (F*CH4p/100)/m_CH4;//k moles of CH4 in feed-[kmol]
air = 300 ;// Air given -[kg]
m_air = 29 ;// molecular wt. of  1kmol air-[kg]
mol_air = air/m_air ;// kmoles of air-[kmol]
O2p = 21 ;// percentage of O2 in air-[%]
O2 = (mol_air*O2p/100)  ;// amount of entering O2-[k mol]
N2 = mol_air-O2 ;// amount of entering N2-[k mol]

// Degree of freedom analysis
n_un = 8 ;// Number of unknowns in the given problem(excluding extent of reactions)
n_ie  = 8 ;// Number of independent equations
d_o_f =  n_un-n_ie ;// Number of degree of freedom
printf('Number of degree of freedom for the given system is  %i \n',d_o_f);

// Product composition analysis using element balance of C,H,O and N
p_N2 = N2 ;// inert 
C_in = 1*mol_CH4 ;// kmoles of carbon in input-[kmol]
H_in = 4*mol_CH4 ;// kmoles of hydrogen in input-[kmol]
O_in = 2*O2 ;// kmoles of oxygen in input-[kmol]
p_CO2 = C_in/1 ;//kmoles of  CO2 in product obtained  by carbon balance-[kmol]
p_H2O = H_in/2 ;//kmoles of  H2O in product obtained  by hydrogen balance-[kmol]
p_O2 = (O_in-(2*p_CO2+p_H2O))/2 ;//kmoles of  O2 in product obtained  by oxygen balance-[kmol]
p_CH4 = 0 ;// Complete reaction occurs
P = p_CH4 + p_N2+  p_CO2 + p_H2O + p_O2;

y_N2 = p_N2*100/P ;//[mol %]
y_CO2 = p_CO2*100/P ;//[mol %]
y_H2O = p_H2O*100/P ;//[mol %]
y_O2 = p_O2*100/P ;//[mol %]
y_CH4 = p_CH4*100/P ;//[mol %]

printf('\nComposition of product\n');
printf('Component        mole percent\n');
printf(' CH4             %.1f %%\n',y_CH4);
printf(' O2              %.1f %%\n',y_O2);
printf(' CO2             %.1f %%\n',y_CO2);
printf(' H2O             %.1f %%\n',y_H2O);
printf(' N2              %.1f %%\n',y_N2);