clear;
//clc();

// Example 14.8
// Page: 388
printf("Example-14.8  Page no.-388\n\n");

//***Data***//
Temp = 273.15+100;//[K] Temperature of the water drop
R = 8.314;//[J/(mol*K)] Universal gas constant
D = 0.01*10^(-6);//[m] Diameter of the water drop
P_g = 0.15;//[bar] guage pressure
T = 0.05892;//[N/m] Surface tension between water drop and gas

// The calculation of the pressure difference from inside to outside is the same as done in the example 14.7

// The specific Gibb's free energy of the liquid is thus given as
// (g_water_liquid - g_NBP) = integrate(v_water_liquid)dP  , with integration limits P_NBP and (P_gas + 4*T/D)
// Where 
v_water_liquid = 0.018/958.39;//[m^(3)/mol]
P_NBP = 1.013;//[bar]
P_gas = 1.013+0.15;//[bar]

// Say
P_1 = P_gas + 4*T/D;//[bar]
// and (g_water_liquid - g_NBP) = delta_g_1
// So
delta_g_1 = integrate('v_water_liquid*P^(0)','P',P_NBP,P_1);//[J/mol]

// and for the gas, again using equation for Gibb's free energy, we have 
// (g_water_liquid- g_NBP) = integrate(v_water_gas)dP  , with integration limits P_NBP and P_gas
// Here assuming that the vapour follows the ideal gas law we have 
// v_water_gas = (R*Temp/P)
// and also let (g_water_liquid- g_NBP) = delta_g_2
// so
delta_g_2 = integrate('(R*Temp)/P','P',P_NBP,P_gas);

// Now 
// (g_water_liquid - g_water_gas) = (g_water_liquid - g_NBP)-(g_water_gas - g_NBP) = delta_g
// So
delta_g = (delta_g_1 - delta_g_2); 

// We have got the value of the delta_g positive, so

printf("The liquid can lower its free energy %0.2f J/mol by Changing to gas,\n",delta_g);
printf("So that even at 0.15 bar above the normal boiling point, a drop of this small size is unstable and will quickly evaporate.");
