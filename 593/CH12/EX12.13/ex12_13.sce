clear;
//clc();

// Example 12.13
// Page: 342
printf("Example-12.13  Page no.-342\n\n");

//***Data***//
P = 150;//[atm] given pressure
T = 400;//[C] temperature
// Using the values from the example 12.11, we know that
K = 0.013;
K_v = 0.84;
delta_v = 1.5+0.5-1;

// so 
// K_p = (K/K_v)*[1/bar]^(-summation(v_i)) = (K/K_v)*[1/bar]^(delta_v)

K_p = (K/K_v)*[1/1]^(delta_v);//[1/bar]

printf(" Value of the K_p at the given condition is %f (1/bar)\n\n",K_p);

printf (" The basic K is dimensionless, but K_p has the dimensions of pressure to the power.")