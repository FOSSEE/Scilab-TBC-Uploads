clear;
//clc();

// Example 13.8
// Page: 362
printf("Example-13.8  Page no.-362\n\n");

//***Data***//
T = 298.15;//[K] Temperature
F = 96500;//[(coulomb)/(mole*electrons)] faraday constant

// The reaction taking place between lithium and florine is 
// Li + F = LiF

// From Table A.8 we find that 
delta_g_0 = -587.7*1000;//[J/mol]
// We also know that 
n_e = 1;//[electron] no of electron transferred
// That is because the valence Li and F change by 1, so one electron is transferred per molecule of LiF, thus
E_298_0 = (-delta_g_0)/(n_e*F);//[V]

printf("The reversible voltage for given electrochemical device is %f Volt",E_298_0);