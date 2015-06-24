clear;
//clc();

// Example 14.6
// Page: 386
printf("Example-14.6  Page no.-386\n\n");

//***Data***//
T = 100;//[C] Temperature of the outside
P_outside = 1;//[atm]
// At 100 C, the surface tension between steam and water is 
T = 0.05892;//[N/m] From metric steam table (7, page 267)

// Pressure difference between inside and outside of a drop is given by the expression 
// (P_inside - P_outside) = (4*T)/d_i

// Let (P_inside - P_outside) = delta_P , so
//delta_P = (4*T)/d_i
// For the drop of diameter
d_1 = 0.001;//[m]
// So 
delta_P_1 = (4*T)/d_1;//[Pa]

// Which is certainly negligible 
// If we reduce the diameter to 
d_2 = 10^(-6);//[m]

// So 
delta_P_2 = (4*T)/d_2;//[Pa]

// If we reduce it to diameter that is smallest sized drop likely to exist 
d_3 = 0.01*10^(-6)//[m]
// Then the calculated pressure difference is 
delta_P_3 = (4*T)/d_3;//[Pa]

printf("Pressure difference with the change in radius of the drop of the water is given as in the following table\n\n");
printf("            Diameter of the droplet (d_i)(in meter)                   Pressure difference ( P_inside - P_outside )(in atm)\n");
printf("                     %0.2e                                                     %0.2e\n",d_1,delta_P_1); 
printf("                     %0.2e                                                     %0.2e\n",d_2,delta_P_2); 
printf("                     %0.2e                                                     %0.2e\n",d_3,delta_P_3); 
