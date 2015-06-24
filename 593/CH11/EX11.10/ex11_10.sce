clear;
//clc();

// Example 11.10
// Page: 293
printf("Example-11.10  Page no.-293\n\n");

//***Data***//
Temp = 20;//[C]
// At this temperature solubility of NaCl is 
s = 36.0;//[g per 100 g of water]
M_NaCl = 58.5;//[g/mol] molecular weight of NaCl 
M_water = 18;//[g/mol] molecular weight of water

// weight fraction of NaCl
w = s/(s+100);
// In weight percentage 
w_percent = w*100;//[wt %]

// Mol fraction of the NaCl
x = (s/M_NaCl)/((s/M_NaCl)+(100/M_water));
// In mol percentage
x_percent = x*100;//[mol %]

printf(" Weight fraction of the NaCl in the saturated solution is %0.1f wt %%\n",w_percent);
printf(" Mol fraction of the NaCl in the saturated solution is    %0.0f mol %%\n",x_percent);


