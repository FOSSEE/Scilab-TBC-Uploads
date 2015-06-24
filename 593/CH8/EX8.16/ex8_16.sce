clear;
//clc();

// Example 8.16
// Page: 201
printf("Example-8.16  Page no.-201\n\n");

//***Data***//
n_sugar = 1;//[mol]
n_water = 1000/18;//[mol]
x_sugar = n_sugar/(n_sugar+n_water);
x_water = n_water/(n_sugar+n_water);

// Here we can assert that for liquid solution and solid ice to be in equilibrium, the fugacity of water in the liquid must be same as that of water in the solid ice. 
// Crystalline solid formed from such a solution is nearly pure H2O, with no dissolved sugar.
// At the low pressures involved here, these fugacities are practically equal to partial pressures, so that 
//P = x_water*p_water+x_sugar*p_sugar = p_ice;

// but
p_sugar = 0;
// so
p_ice_by_p_water = x_water;

// Figure 5.8 reported in the book  (page 100) shows the vapour pressure of subcooled water and of ice. 
//The values in the given table from which that figure were made can be represented by the following totally empirical data-fitting equation.
// p_ice/p_water = 1+0.0096686*T+4.0176*10^(-5)*T^(2)
// We eliminate p_ice/p_water by x_water 

deff('[y]=f(T)', 'y = 1+0.0096686*T+4.0176*10^(-5)*T^(2)-p_ice_by_p_water');
T = fsolve(0,f);//[C]

printf("Freezing-point temperature of the given solution is %f C",T);