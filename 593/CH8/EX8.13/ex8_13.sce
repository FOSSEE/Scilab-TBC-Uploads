clear;
//clc();

// Example 8.13
// Page: 194
printf("Example-8.13  Page no.-194\n\n");

//***Data***//

// Here again, we will denote ethanol as species 'a' and water as the species 'b'
x_aF = 0.126;
x_bF = (1-x_aF);
P = 1.00;//[atm] Given total pressure
T = 91.8;//[C]

// We will go with graphical approach for solving this problem 
// This problem requires T - x_a diagram at the given pressure i.e. 1 atm 
// This diagram is provided on page 196( figure 8.19) in the book 
// We will draw horizontal and vertical lines corresponding to the specified T and x_a. 
// Drawing a horizontal line from temperature 91.8 degC and vertical line corresponding to the x_aF = 0.126, we see that these two intersect in the two phase region, which tells that our feed contains both liquid and vapour phase
// Now liquid phase composition in equilibrium is found by reading the x-axis where the bubble-point vs x_a curve and horizontal line corresponding to     T = 91.8 degC intersect and viz.
x_a = 0.0401;
x_b = (1 - x_a);

// Similarily vapour phase composition in equilibrium is found by reading the x-axis where the dew-point vs y_a curve and horizontal line corresponding to T = 91.8 degC intersect and viz.
y_a = 0.2859;
y_b = ( 1 - y_a);

// Now vapour fraction is given by
V_by_F = ( x_aF - x_a )/(y_a - x_a);

printf(" Mole fraction of the ethanol in the liquid phase in equilibrium at the given condition is %f\n",x_a);
printf(" Mole fraction of the water in the liquid phase in equilibrium at the given condition is %f\n",x_b);
printf(" Mole fraction of the ethanol in the vapour phase in equilibrium at the given condition is %f\n",y_a);
printf(" Mole fraction of the water in the vapour phase in equilibrium at the given condition is %f\n",y_b);
printf(" Vapor fraction of the given water-ethanol mixture after the flash in equilibrium is %f",V_by_F);
