clear ;
clc;
// Example 10.6
printf('Example 10.6\n\n');
// Page no. 281
// Solution

// Basis: P=100 // Product from the reactor-[g mol]
P=100 ;//Product from the reactor-[g mol]
// Composition of product
C3H8 = 0.195*P ;// [g mol]
C4H10 = 0.594*P ;// [g mol]
C5H12 = 0.211*P;// [g mol]

n_un = 3 ;// Number of unknowns in the given problem(excluding extent of reaction)
n_ie  = 3 ;// Number of independent equations
d_o_f =  n_un-n_ie ;// Number of degree of freedom
printf('Number of degree of freedom for the given system is  %i \n',d_o_f);

C = C3H8*3+C4H10*4+C5H12*5 ;// moles of C on product side
H = C3H8*8+C4H10*10+C5H12*12 ;// moles of H on product side
// Solve following eqn.( obtained by element balance of C & H) for F and G 
//8F+0G = C
//18F+2G = H
a = [8 0;18 2] ;// matrix formed by coefficients of unknowns 
b = [C;H] ;//matrix formed by constant
x = a\b ;// matrix of solution

R = x(2)/x(1) ;// Ratio of H2 consumed to C8H18 reacted  = G/F
printf(' Molar ratio of H2 consumed to C8H18 reacted is %.3f  \n',R);