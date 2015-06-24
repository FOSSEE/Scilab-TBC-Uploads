clear;
//clc();

// Example 8.1
// Page: 163
printf("Example-8.1  Page no.-163\n\n");

//***Data***//
x_acetone = 0.05;// Mole fraction of Acetone in liquid
x_water = (1-x_acetone);
// Using the values from table 8.1(page 162) as reported in the book we have 
y_acetone = 0.6381;// Mole fraction of Acetone in vapour
y_water = (1-y_acetone);
// We know that
// K_i = y_i/x_i
// So 'K' factors are
K_acetone = y_acetone/x_acetone;
K_water = y_water/x_water;
// and relative volatility is 
a = K_acetone/K_water;
printf("The K factor of acetone is %f\n",K_acetone);
printf(" The K factor of water is    %f\n",K_water);
printf(" The relative volatility is  %f",a)