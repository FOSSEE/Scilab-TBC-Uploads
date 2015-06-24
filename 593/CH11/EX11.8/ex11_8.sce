clear;
//clc();

// Example 11.8
// Page: 287
printf("Example-11.8  Page no.-287\n\n");

//***Data***//

T_i = 50;//[F] Initial temperature of the system 
T_f = 20;//[F] Final temperature of the system
M_gas = 115;//[g/mol] Molecular weight of gasoline at room temperature
M_water = 18;//[g/mol] Molecular weight of water at the room temperaature
d = 720;//[g/L] density of gasoline at the room temperature

// From Figure 11.10 ( page 288 ), solubility of the water in gasoline ( similar to solubility of water in cyclohexane ) at 50 deg F is given as 
s_50 = 0.00026;//[mol fraction]

// And linearly extraploting the cyclohexane curve in figure 11.10 to 20 deg F, we get the solubility of water at 20deg F as 
s_20 = 0.0001;//[mol fraction]

// So, rejected water is
s_rej = s_50 - s_20;// mol of water per mole of gasoline 

// In terms of weight, rejected water will be
w = (s_rej*d*M_water)/M_gas;//[g water/L gasoline]

printf(" The amount of water that will come out of the solution in the gasoline will be %f g water/L gasoline\n",w);
printf(" At 20 deg F we would expect this water to become solid ice, forming a piece large enough to plug the fuel line of a parked auto.");
