// Ex7_10 Page:136 (2014)
clc;clear;
// Case 1: For pure orbital angular momentum
S = poly(0, 'S');    // Total spin angular momentum variable
S = 0;    // S value for pure orbital angular momentum 
L = poly(0, 'L');    // Total orbital angular momentum variable
J = L + S;    // J value for pure orbital angular momentum 
g = horner(1 + (J*(J + 1) + S*(S + 1) - L*(L + 1))/(2*J*(J + 1)), 0); // Lande's g-factor
printf("\nFor pure orbital angular momentum, g = %d", g);
// Case 2: For pure spin angular momentum
S = poly(0, 'S');    // Total spin angular momentum variable
L = 0;    // L value for pure spin angular momentum 
J = L + S;    // J value for pure spin angular momentum 
g = horner(1 + (J*(J + 1) + S*(S + 1) - L*(L + 1))/(2*J*(J + 1)), 0); // Lande's g-factor
printf("\nFor pure spin angular momentum, g = %d", g);
// Case 3: For state 3P1
S = 1;    // S value for pure spin angular momentum 
L = 1;    // L value for pure spin angular momentum 
J = L + S;    // J value for pure spin angular momentum 
g = horner(1 + (J*(J + 1) + S*(S + 1) - L*(L + 1))/(2*J*(J + 1)), 0); // Lande's g-factor
printf("\nFor 3P1 state, g = %d/2", 2*g);

// Result
// For pure orbital angular momentum, g = 1
// For pure spin angular momentum, g = 2
// For 3P1 state, g = 3/2 