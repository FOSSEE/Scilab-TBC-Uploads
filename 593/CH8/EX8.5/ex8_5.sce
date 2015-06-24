clear;
//clc();

// Example 8.5
// Page: 178
printf("Example-8.5  Page no.-178\n\n");

//***Data***//
// At equilibrium on dew-point the conditions are given as
P = 1;//[atm]
y_water = 0.60;
// From the figure 8.12d, if we start at 130C and 60 mol% water and cool.
//  We meet he dew-point line at 99C, and at the same temperature the bubble-point curve shows
x_water_1 = 0.22;
// Doing the same procedure with y_water = 0.90, we get the dew-point at the rightmost side at 98C 
// In this case, the bubble-point line is the steeply sloping one at hte right, from wich we read 
x_water_2 = 0.99;
// Similarily with y_water = 0.73, we get that two dew-point meet at 92C.
// Vapour of this composition is in equilibrium with both liquid phases, as sketched in hte figure 8.12d.
// Vapour with any other composition is in equilibrium with only one liquid i.e.
// if y_water < 0.73, then
// x_water <0.65
// and if y_water > 0.73, then
// x_water >0.98
printf(" The equilibrium amount of water in liquid at bubble-point for the dew-point composition y_water=60 mol%% is %f mol%% water\n",x_water_1);
printf(" The equilibrium amount of water in liquid at bubble-point for the dew-point composition y_water=90 mol%% is %f mol%% water",x_water_2);
