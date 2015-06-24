clear;
//clc();

// Example 13.6
// Page: 358
printf("Example-13.6  Page no.-358\n\n");

//***Data***//
// All the data are taken from the previous example 13.5 
m_H = 10^(-10);//[molal] molality of hydrogen ion
K_1 = 4.5*10^(-7);
K_2 = 4.7*10^(-11);

// Our Henry's law calculations are independent of the subsequent fate of the dissolved CO2.
// The concentration of dissolved CO2 in equilibrium with atmosphere is 
m_CO2 = 1.32*10^(-5);//[molal] from previous example
// It is independent of that acidity or basicity of the water, and hence 
m_HCO3 = K_1*(m_CO2/m_H);//[molal]

// and 
m_CO3 = K_2*(m_HCO3/m_H);//[molal]
printf(" Amount of the CO2 dissolved in water in equilibrium with air is    \t%0.2e molal\n",m_CO2);
printf(" Conentration of HCO3 ion in solution in equilibrium with air is \t %0.2e molal\n",m_HCO3);
printf(" And concentration of CO3 ion in the solution in equilibrium with air is  %0.2e molal",m_CO3);