clear;
//clc();

// Example 11.11
// Page: 293
printf("Example-11.11  Page no.-293\n\n");

//***Data***//
T_inlet = 68;//[F]
T_outlet = 110;//[F]

// from the figure 11.13 we read that at 68F the solubility of CaCO3 and CaSO4.2H2O are 
s_inlet_carbonate = 60;//[ppm]
s_inlet_sulphate = 2020;//[ppm]

// At 110F the solubility of the CaCO3 is 
s_outlet_carbonate = 40;//[ppm]
// at 110F the least soluble form of the CaSO4 is anhydride with the solubility 
s_outlet_sulphate = 2000;//[ppm]
 // This is close enough to the solubility of the gypsum at 68F 
 // so we conclude that we would not expect either form of CaSO4 to prdcipitate
 
 // Thus total amount of the calcium carbonate which will cime out of the solution and will remain in the heater will be 
 w = s_inlet_carbonate - s_outlet_carbonate;//[ppm]
 printf (" Total amount of the solid left behind in the heater will be        %0.1f ppm\n\n",w);

 // Now if a typical houshold water heater heats 100 gallons/per day , we would expect to deposite 
 w_per_day = w*10^(-6)*100*8.33;//[lb/day]
printf (" Total amount of the solid left behind in the heater per day will be %f lb/day",w_per_day);
