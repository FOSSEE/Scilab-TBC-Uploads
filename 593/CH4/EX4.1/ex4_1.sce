clear;
//clc();

// Example 4.1
// Page: 67
printf("Example-4.1  Page no.-67\n\n");

//***Data***//
T = 671.7;//[R] Equilibrium temperature
m_steam = 1;//[lbm] Condensing amount of the steam
// Using values from the steam table [1], we find that
delta_h_condensation = -970.3//[Btu/lbm] Enthalpy change of the steam
delta_s_condensation = -1.4446;//[Btu/(lbm*R)] Entropy change of the steam

// Gibb's free energy change of the steam is
delta_g_condensation = delta_h_condensation - T*delta_s_condensation;//[Btu/lbm]

printf("Gibb''s free energy change of the steam is %0.1f Btu/lbm",delta_g_condensation);
