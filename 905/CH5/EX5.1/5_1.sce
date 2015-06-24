clear;
clc;

// Illustration 5.1
// Page: 287

printf('Illustration 5.1 -  Page: 287\n\n');

// solution

//*****Data*****//
// Component 'A' is to be absorbed //
y_N1 = 0.018; // [mole fraction 'A' of in entering gas]
y_1 = 0.001; // [mole fractio of 'A'in leaving gas]
x_0 = 0.0001; // [mole fraction of 'A' in entering liquid]
m = 1.41; // [m = yi/xi]
n_1 = 2.115; // [molar liquid to gas ratio at bottom, L/V]
n_2 = 2.326; // [molar liquid to gas ratio at top, L/V]
E_MGE = 0.65;
//*****//

printf('Illustration 5.1 (a) -  Page: 287\n\n');
// Solution (a)

A_1 = n_1/m; // [absorption factor at bottom]
A_2 = n_2/m; // [absorption factor at top]

A = sqrt(A_1*A_2);
// Using equation 5.3 to calculate number of ideal stages
N = (log(((y_N1-m*x_0)/(y_1-m*x_0))*(1-1/A) + 1/A))/log(A); // [number of ideal stages]
printf("Number of ideal trays is %f\n",N);
// Using equation 5.5
E_o = log(1+E_MGE*(1/A-1))/log(1/A);
// Therefore number of real trays will be
n = N/E_o;
printf("Number of real trays is %f\n",n);
n = 8;
printf("Since it is not possible to specify a fractional number of trays, therefore number of real trays is %f\n\n",n);

printf('Illustration 5.1 (b) -  Page: 287\n\n');

// Solution (b)

// Back checking the answer
printf('Back checking the answer'); 
N_o = E_o*n;
// Putting N_o in equation 5.3 to calculate y_1
deff('[y] = f16(Z)','y=N_o-(log(((y_N1-m*x_0)/(Z-m*x_0))*(1-1/A) + 1/A))/log(A)');
Z = fsolve(0.001,f16);
printf("Mole fraction of A in leaving gas is %f percent which satisfies the requirement that the gas exit concentration should not exceed 0.1 percent.",Z);

// For a tower diameter of 1.5 m, Table 4.3 recommends a plate spacing of 0.6 m
Z = n*0.6; // [Tower height, m]
printf("The tower height will be %f m",Z);