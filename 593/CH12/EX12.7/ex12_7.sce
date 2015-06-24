clear;
//clc();

// Example 12.7
// Page: 327
printf("Example-12.7  Page no.-327\n\n");

//***Data***//
Temp = 298.15;//[K]
Press = 1*10^(5);//[Pa]
R = 8.314;//[J/(mol*K)]

// We will calculate the free energy change from liquid to hypothetical gas in three steps
// 1) The liquid is reduced in pressure from the standard pressure of 1 bar to its vapour pressure at 298.15K and for this cange in the state we have 
v_liquid = 1.805*10^(-5);//[m^(3)/mol] this liquid specific volume and we will treat is as a constant

// The vapour preesure of the water 25C is given as
P_vapour_25 = 0.0317*10^(5);//[Pa]

// thus change in the Gibbs free energy is 
delta_g_0_1 = integrate('v_liquid*P^(0)','P',Press,P_vapour_25);//[J/mol]

// 2) In the second step the liquid is vaporized at that pressure, for which
delta_g_0_2 = 0;//[J/mol]
// because this is an equilibrium vaporization.

// 3) And in this last step the vapour is replaced by an ideal gas, which  will not condence, and compressed from the vapour pressure at 298.15K to 1 bar
// In this case the specific volume v_ideal of the ideal gas is replaced by the ideal gas law viz. (R*T)/P
delta_g_0_3 = (R*Temp)*integrate('1/P','P',P_vapour_25,Press);//[J/mol]

// Thus total change in free energy is 
delta_g_0 = delta_g_0_1+delta_g_0_2+delta_g_0_3;//[J/mol]
//expressing the result in kJ/mol
delta_g_1 = delta_g_0/1000;//[kJ/mol]

printf(" Total change in the free energy of water, going under given conditions, is %0.2f kJ/mol\n\n",delta_g_1);

// From Table A.8 we find 
delta_g_0_ideal_gas = -228.6;//[kJ/mol]
delta_g_0_liquid = -237.1;//[kJ/mol]
// So 
delta_g_o = delta_g_0_ideal_gas-delta_g_0_liquid;//[kJ/mol]

printf(" From the values of Table A.8 given in the book, the free energy change is %0.2f kJ/mol",delta_g_o);
