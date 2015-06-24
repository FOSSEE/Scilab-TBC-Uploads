clear;
//clc();

// Example 2.1
// Page: 27
printf("Example-2.1  Page no.-27\n\n");

//***Data***//
m = 1;//[lbm] Mass of the steam
T_1 = 300;//[F] Initial temperature
P_1 = 14.7;//[psia] Initial pressure
P_sorronding = 14.7;//[psia]
Q = 50;//[Btu] Amount of the energy added to the system as heat

// This is a closed system and we can apply the following equations
// delta_U_system = sum(dQ_in_minus_out) + sum(dW_in_minus_out)                                (A)
// dS_system = (m*ds)_system = sum((dQ)/T)_in_minus_out + dS_reversible                        (B)

// From the steam tables, we look up the properties of steam at temperature 300F and pressure 14.7 psia and find 
u_initial = 1109.6;//[Btu/lbm] Internal energy of the steam
h_initial = 1192.6;//[Btu/lbm] Enthalpy of the steam
s_initial = 1.8157;//[Btu/(lbm*R)] Entropy of the steam

// The work here is done by the system, equal to
//  -delta_w = P*A_piston*delta_x = P*m*delta_v

// Substituting this in the equation (A) and rearranging, we have
//  m*delta_(u + P*v) = m*delta_h = delta_Q
// From which we can solve for the final specific enthalpy
h_final = h_initial + Q;//[Btu/lbm]

// Now, by the linear interpolation we find that at h = 1242.6 Btu/lbm and P = 1 atm, temperature of the steam is given 
T_2 = 405.7;//[F] Final temperature

// At this final temperature and pressure we have the steam properties 
u_final = 1147.7;//[Btu/lbm]
s_final = 1.8772;//[Btu/(lbm*R)]

// Thus, increase in the internal energy, enthalpy and entropy are 
delta_u = u_final - u_initial;//[Btu/lbm]
delta_s = s_final - s_initial;//[Btu/(lbm*R)]
delta_h = Q;//[Btu/lbm]

// The work done on the atmosphere is given by
w = delta_h - delta_u;//[Btulbm]

printf("The increase in internal energy of the steam by adding the heat is %0.2f Btu/lbm\n",delta_u);
printf("The increase in enthalpy of the steam by adding the heat is        %0.2f Btu/lbm\n",delta_h);
printf("The increase in entropy of the steam by adding the heat is         %0.4f Btu/lbm\n",delta_s);
printf("Work done by the piston, expanding against the atmosphere is       %0.2f Btu/lbm",w)
