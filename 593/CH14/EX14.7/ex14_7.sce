clear;
//clc();

// Example 14.7
// Page: 387
printf("Example-14.7  Page no.-387\n\n");

//***Data***//
P_NBP = 1;//[atm]
Temp =273.15+100;//[C] Temperature
D = 0.01*10^(-6);//[m] Diameter of the condensation nuclei( due to impurity )
T = 0.05892;//[N/m] Surface tension between water drops and gas
R = 8.314;//[J/(mol*K)]

// At equilibrium the Gibb's free energy per pound will be the same inside and outside the drops.
// From the previous example 14.6, the pressure difference inside and outside of the drop is 
// delta_P = ( P_inside-P_outside) = 4*T/D = 233 atm = 235.7 bar

// Taking the Gibb's free energy at the normal boiling point as g_NBP we have 
// g_small_drop_equilibrium = g_NBP + integrate(v_water_gas)dP  , with integration limits P_NBP and P_gas
// also
// g_small_drop_equilibrium = g_NBP + integrate(v_water_liquid)dP  , with integration limits P_NBP and (P_gas + 4*T/D)
// and
v_water_liquid = 1/958.39*0.018;//[m^(3)/mol]

// If we assume that the specific volume of the liquid is a constant,and independent of pressure, and that the volume of the vapour is given by the gas law
// then we can perform the integrations and cancel the g_NBP terms, finding the Kelvin equation 

// (R*Temp)*log(P_gas/P_NBP) = v_water_liquid*(P_gas + 4*T/D - P_NBP)
// For very small drops 
// (P_gas - P_NBP) << 4*T/D
// So that we can write it approximately as 

// P_gas/P_NBP = exp(v_water_liquid*(4*T/D)/(R*Temp)) = I
// so
I = exp(v_water_liquid*(4*T/D)/(R*Temp));

// Substracting 1 from both sides in the above equation we have 
// (P_gas-P_NBP)/P_NBP = I-1
// So 
P_gas_minus_P_NBP = (I-1)*P_NBP;//[atm]
// Changing into the bar we have 
delta_P = P_gas_minus_P_NBP*1.01325;//[bar]

// Now changing the unit to psi we have 
delta_P_1 = delta_P*100*0.1450377;//[psi]

printf("The equilibrium pressure at which the steam begin to condence at this temperature on the nuclei is %f psi above the normal boiling point.",delta_P_1);

