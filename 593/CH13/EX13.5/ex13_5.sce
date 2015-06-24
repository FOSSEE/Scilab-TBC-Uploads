clear;
//clc();

// Example 13.5
// Page: 357
printf("Example-13.5  Page no.-357\n\n");

//***Data***//
T = 273.15+25;//[K] Given temperature of air
P = 1;//[atm] Pressure of the air
y_CO2 = 350*10^(-6);// Amount of CO2 present in air at the given condition 
R = 8.314;//[J/(mol*K)]

// At equilibrium there are two ionisition reactions takin place sequentily
// First ionisation reaction is 
// H2CO3 = H+  +  HCO3-
// Free energy of the species of the above reation is
g_0_H2CO3 = -623.1*1000;//[J/mol]
g_0_H = 0;//[J/mol]
g_0_HCO3 = -586.85*1000;//[J/mol]

// So free energy change of the reaction is given by 
delta_g_0 = g_0_H + g_0_HCO3 - g_0_H2CO3;//[J/mol]
// Equilibrium constant of the reaction is given by
K_1 = exp((-delta_g_0)/(R*T)); 

// And the second one is 
// HCO3- = H+  +  CO3(-2)
// Free energy of the species of the second reacion are
g_0_CO3 = -527.89*1000;//[J/mol]

// Free energy change of the second reacion is 
delta_g_1 = g_0_H + g_0_CO3 - g_0_HCO3;//[J/mol]
// So equilibrium constant of the reaction is given by
K_2 = exp((-delta_g_1)/(R*T));

// Now, writing the expression of the equilibrium constant of the first reaction, we have
// K_1 = ([HCO3-]*[H+])/[H2CO3]
// and that for the second reaction 
// K_2 = ([CO3]*[H+])/[CO3-]

// From the Table A.3 (page 419) as reported in the book, Henry's law constant is 
H = 1480;//[atm]

// From Henry's law 
// P*y_CO2 = x_O2*H  , so
x_CO2 = P*y_CO2/H;

// This gives the mol fracion. The dissociation constant are based on molaities a standard states, so
// Molality of the CO2 in the solution is 
// m_CO2 = x_CO2*n_water  , where 'n_water' is number of moles of water in 1000g of water, so
n_water = 1000/18;//[mol]
m_CO2 = x_CO2*n_water;//[molal]

// Then we assume that almost all the H+ comes from the dissociation of dissolved CO2, so 
// m_HCO3 = m_H, i.e. molality of bicarbonate is approximately equal to molality of hydrogen ion in the solution and hence 
m_HCO3 = sqrt(K_1*m_CO2);//[molal]
m_H = m_HCO3;//[molal]

// Then we compute 
m_CO3 = K_2*(m_HCO3/m_H);//[molal]

printf(" Amount of the CO2 dissolved in water in equilibrium with air is \t\t\t%0.2e molal\n",m_CO2);
printf(" Conentration of HCO3 ion and hydrogen ion H- in solution in equilibrium with air is    %0.2e molal\n",m_HCO3);
printf(" And concentration of CO3 ion in the solution in equilibrium with air is\t\t%0.2e molal",m_CO3);