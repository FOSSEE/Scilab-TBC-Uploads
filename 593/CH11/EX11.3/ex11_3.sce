clear;
//clc();

// Example 11.3
// Page: 277
printf("Example-11.3  Page no.-277\n\n");

//***Data***//

Temp = 25;//[C]
n_water = 3.75;//[mol]
n_ethanol = 2.5;//[mol]
n_benzene = 3.75;//[mol]

// By the simple stoichiomtetry the overall mole fractions are 

x_water = 0.375;
x_ethanol = 0.250;
x_benzene = 0.375;

// We locate the point corresponding to this concentration on the diagram 11.1 (page 277), by drawing any two of the three straight lines corresponding to those mole fractions.
// We find that the point falls almost exactly on the fifth tie line from the top.
//For this the end-point values are read from the table 11.4 ( page 276 ), which is fifth row from the bottom 
// Thus in water reach phase we have the composition as
x_water_w = 64.9;//[%]
x_ethanol_w = 31.75;//[%]
x_benzene_w = 3.37;//[%]

// and in the benzene reach phase composition is 
x_water_b = 6.43;//[%]
x_ethanol_b = 18.94;//[%]
x_benzene_b = 74.62;//[%]
printf("The composition of the two equilibrium phases i.e. water-reach phase and benzene reach phase is as \n\n");
printf("\t\t\t\tWater-reach phase\t\t\t\t\t\t\tbenzene-reach phase\n");
printf("  Mol%% water\t\t\t%f\t\t\t\t\t\t\t\t%f\n\n",x_water_w,x_water_b);
printf("  Mol%% ethanol\t\t\t%f\t\t\t\t\t\t\t\t%f\n\n",x_ethanol_w,x_ethanol_b);
printf("  Mol%% benzene\t\t\t%f\t\t\t\t\t\t\t\t%f\n\n",x_benzene_w,x_benzene_b);