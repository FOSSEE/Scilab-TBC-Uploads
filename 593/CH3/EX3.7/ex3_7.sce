clear;
//clc();

// Example 3.7
// Page: 60
printf("Example-3.7  Page no.-60\n\n");


//***Data***//

V = 0.25;//[L] Volume of water 
T_1 = 0;//[C] Initial temperature of water
T_2 = 20;//[C] Final temperature of water

// From the example 3.3 the mol fractions of oxygen and notrogen in water at temperature 20 deg C are
x_o = 5.12*10^(-6);// mole fraction of oxygen
x_n = 9.598*10^(-6);// mole fraction of nitrogen


// Now we will calculate the mole fraction of oxygen and nitrogen in water at 0 deg C in the same manner as in example 3.3
// From the table A.3( page 419), Henry's constant of oxygen and nitrogen are
H_o = 2.55*10^(4);//[atm]
H_n = 5.29*10^(4);//[atm]

// And vapor pressure of water at 0 deg C is 
p_w = 0.006;//[atm]

// Now using the same set of equations as in example 3.3, by changing only H_o, H_n and p_w and solving by matrix method we have 

A = [0.006 0 0 -1 0 0;0 25500 0 0 -1 0;0 0 52900 0 0 -1;0 0 0 1 1 1;1 1 1 0 0 0;0 0 0 0 0.79 -0.21];
B = [0;0;0;1;1;0];
X = A^(-1)*B;

// Here the mole fraction of oxygen and nitrogen in water will be X(2) and X(3) respectively
// So oxygen rejected is
M_o_rej = V*( X(2) - x_o )/0.018;//[mole] oxygen
// Now At STP volume of the rejected oxygen is given as 
V_o = M_o_rej*24200;//[ml] oxygen

// And rejected nitrogen is
M_n_rej = V*( X(3) - x_n )/0.018;//[mole] nitrogen
// In terms of volume 
V_n = M_n_rej*24200;//[ml]

printf(" At equilibrium at 20 deg C the rejected amount of oxygen will be   %0.2f ml\n",V_o);
printf(" At equilibrium at 20 deg C the rejected amount of nitrogen will be %0.2f ml\n",V_n);
printf(" And total amount of the air rejected from the water will be        %0.2f ml",(V_o + V_n));
