clear;
//clc();

// Example 12.2
// Page: 319
printf("Example-12.2  Page no.-319\n\n");

//***Data***//
T = 298.15;//[K] temperature
P = 0.987;//[atm] pressure
g_0_NO = 86.6;//[kJ/mol] Free energy of formation the NO from elements
R = 8.314;//[J/(mol*K)]

// And the corresponding values for the elements N2 and O2 are
g_0_O2 = 0.00;
g_0_N2 = 0.00;

// The reaction of the nitrogen and oxygen to form nitric oxide at 298.15 K is
// N2 + O2 = NO

//  Here 
delta_g_0 = 2*g_0_NO - g_0_O2 - g_0_N2;//[kJ/mol]
// Changing in the J/mol 
delta_g_01 = delta_g_0*1000;//[J/mol]

// hence 
K_298 = exp((-delta_g_01)/(R*T));

// The activities are all 
// a_i = f_i/f_i_0
// f_i_0 correspond to the standard state, which for gas at idael gas state are 
f_0_N2 = 1;//[bar]
f_0_O2 = 1;//[bar]
f_0_NO = 1;//[bar]

// If we make the most general statement of the activities (for gases ) we would have
// a_i = y_i*v_i*Y_i*P/f_i_0 = y_i*phi*P/f_i_0

// At this low pressure we may safely asssume that the NO,O2 and N2 behave as ideal gases for which v_i*Y_i = phi = 1.00 and substituting these we find
// K_298 = [a_NO]^(2)/([a_N2]*[a_O2]) = [y_NO]^(2)/([y_N2]*[y_O2])

// Now using this equilibrium constant we can calculare he equilibrium concentratin of NO in the air sample in which 
//oxygen = 21%, nitrogen = 78% and argon = 1% ,so
y_N2 = 0.78;
y_O2 = 0.21;

// Hence From above expression, we have
y_NO_298 = sqrt(K_298*y_N2*y_O2);

// Making the similar calculations for the temperature 2000 K, we  have
T_1 = 2000;//[K]
K_2000 = exp((-delta_g_01)/(R*T_1));

// So,
y_NO_2000 = sqrt(K_2000*y_N2*y_O2)*10^(6);//[ppm]

printf(" The equilibrium constant for the reaction at 298.15 K is \t\t\t %e\n",K_298);
printf(" The concentration of NO at equilibrium at temperature 298.15 K is \t\t%e\n",y_NO_298);
printf(" The equilibrium constant for the reaction at 2000 K is \t\t\t %e\n",K_2000);
printf(" The concentration of NO at equilibrium at temperature 2000 K is \t\t%f ppm",y_NO_2000);
