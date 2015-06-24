clear;
//clc();

// Example 14.9
// Page: 390
printf("Example-14.9  Page no.-390\n\n");

//***Data***//
Temp = 904.7;//[R] Temperature of the pure liquid water 
P_NBP = 400;//[psia] Saturation pressure of the pure liquid water at the given temperature
T = 1.76*10^(-4);//[lbf/inch] Surface tension of water
R = 10.73;//[(psi*ft^(3))/(lbmol*R)]

// In this problem the gas is inside the bubble, at a pressure much higher than that of the sorrounding liquid.
// The criterion of equilibrium is that the Gibb's free energy of the gas inside the bubble must be the same as that of the liquid outside the bubble.
// Thus we have 
// g_small_drop_equilibrium = g_NBP + integrate(v_water_liquid)dP  , with integration limits P_NBP and P_liquid
// also
// g_small_drop_equilibrium = g_NBP + integrate(v_water_gas)dP  , with integration limits P_NBP and (P_liquid+4*T/D)
// where
v_water_liquid = 18*0.01934;//[ft^(3)/lbmol]
D = 10^(-5);//[inch]

// so 
// g_NBP + integrate(v_water_liquid)dP = g_NBP + integrate(v_water_gas)dP

// Here we assume that the liquid has practically constant density and that the gas behaves as an ideal gas and find 
// (R*Temp)*log((P_liquid+4*T/D)/P_NBP) = v_water_liquid*(P_liquid - P_NBP)
// let P_liquid = p

// We will solve the above equation for p
deff('[y]=f(p)','y = v_water_liquid*(p - P_NBP)-(R*Temp)*log((p+4*T/D)/P_NBP)');
P_liquid = fsolve(300,f);//[psia]

// At this external pressure the pressure inside the bubble is 
P_inside = P_liquid + 4*T/D;//[psia]

printf("The liquid pressure at which these boiling nuclei will begin to grow and intiate boiling is %0.1f psia\n",P_liquid);
printf("At this external pressure the pressure inside the bubble is %0.1f psia",P_inside);
