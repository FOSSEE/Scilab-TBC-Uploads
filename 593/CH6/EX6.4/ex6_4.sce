clear;
//clc();

// Example 6.4
// Page: 113
printf("Example-6.4  Page no.-113\n\n");

//***Data***//
m = 1;//[molal] Molality of the solution with respect to ethanol
M_water = 18;//[g/mol] molecular weight of water

// First we convert molality to mole fraction
x_ethanol = m/(m + 1000/M_water);

// For the low range of data point on figure 6.5(page 112), we can fit an equation
// (Specific volume ) = 0.018032 + 0.037002*x_ethanol - 0.039593*x_ethanol^(2) + 0.21787*x_ethanol^(3)
// This is applicable for (0 < x_ethanol < 0.04 ), which is the case we have

// So
v_tan = 0.018032 + 0.037002*x_ethanol - 0.039593*x_ethanol^(2) + 0.21787*x_ethanol^(3);//[L/mol]

// Now we will find the derivative of the specific volume with respect to x_ethanol at the known point x_ethanol
// (dv/dx_ethanol) =  0.037002 - 2*0.039593*x_ethanol + 3*0.21787*x_ethanol^(2)
// Hence
v_derv_tan = 0.037002 - 2*0.039593*x_ethanol + 3*0.21787*x_ethanol^(2);//[L/mol]

// By simple geometry from the figure 6.6(page 113) of the book we find
// a = v_tan + (1-x_tan)*(dv/dx_1)_tan
// b = v_tan - x_tan*(dv/dx_1)_tan

// We have a = v_ethanol and b = v_water
x_tan = x_ethanol;
// So
v_ethanol = v_tan + (1-x_tan)*(v_derv_tan);//[L/mol]
v_water = v_tan - x_tan*(v_derv_tan);//[L/mol]

printf(" Partial molar volume of the ethanol in the given solution is %f L/mol\n",v_ethanol);
printf(" Partial molar volume of the water in the given solution is %f L/mol",v_water);




