clear ;
clc; 
//Page No.367
// Example 12.5
printf('Example 12.5\n\n');
// Solution fig.E12.5

// Given 
F = 100 ;// Overall feed/basis - [kg]
F_n_C5H12 = 0.80 ;// Fraction of n_C5H12 in overall feed 
F_i_C5H12 = 0.20 ;// Fraction of i_C5H12in overall feed 
S_i_C5H12 = 1 ;// Fraction of i_C5H12 in isopentane stream
P_n_C5H12 = .90 ;// Fraction of n_C5H12 in overall product
P_i_C5H12 = .10 ;// Fraction of i_C5H12 in overall product

// Overall Balances
P = (F*F_n_C5H12)/P_n_C5H12 ;//Product Material Balance of n_C5H12 -[kg]
S = F - P ;// Isopentane stream (S) from overall material balance - [kg]

// Balance around isopentane tower 
// Let x be kg of butane free gas going to isopentane tower , y be the n-C5H12 stream leaving the isopentane tower
// Solve following Equations by Matrix method
// x = S + y - By Total materal balance
// x*F_n_C5H12 = y 
a = [1 -1;F_n_C5H12 -1] ;// Matrix of coefficients of unknown 
b = [S;0] ;// Matrix of constants
x = a\b ;// Matrix of solutions, x(1) = x , x(2) = y

xf = x(1)/F ;// Fraction of butane-free gas going to isopentane tower 

printf('Fraction of butane-free gas going to isopentane tower is %.3f .\n',xf);