clear;
//clc();

// Example 3.1
// Page: 52
printf("Example-3.1  Page no.-52\n\n");


//***Data***//
T = 20;//[C]
P = 1;//[atm]
// From Raoult's law  y_i*P = x_i*p_i
// Rearranging
//y_i = x_i*p_i/P;
// Here we have ternary mixture of nitrogen, oxygen, and water. If we let the subscript i stand for water, we can say that 
//  x_water = 1-x_N2-x_O2;
// but we know from experience that the mole fractions of dissolved N2 and O2 are quite small, so that we are safe in saying that 
x_N2 = 0;
x_O2 = 0;
x_water = 1-x_N2-x_O2;
// From any steam table we may look up the value of the vapour pressure of water at 20C, finding
p_water = 0.023;//[atm]
// So 
y_water = x_water*p_water/P;
printf("The mole fraction of water vapour in air in equilibrium with water is %f",y_water);