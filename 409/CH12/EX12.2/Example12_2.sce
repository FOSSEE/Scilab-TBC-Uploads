clear ;
clc;
//Page No.357
// Example 12.2
printf('Example 12.2\n\n');
// Solution fig.E12.2

// Given 
// Main reaction - C6H6 + 3H2 --> C6H12
F_Bz = 100 ;// Fresh benzene feed / basis - [mol]
con_Bz = .95 ;// Fraction of conversion of benzene
sp_con = .20 ;// Fraction of single pass conversion
ex_H2 = .20 ;// Fraction of exces H2 used in fresh feed
R_Bz = 22.74 ;// Benzene in Recycle stream - [mol %]
R_H2 = 78.26 ;// H2 in Recycle stream - [mol %]
TLV_Bz = 0.5 ;// TLV value of benzene -[ppm]
TLV_C6H12 = 300 ;// TLV value of cyclohexane -[ppm]
TLV_H2 = 1000 ;// TLV value of H2 -[ppm]

// Feed composition
F_H2 = F_Bz*3*(1+ex_H2) ;// H2 in Feed - [mol]
F = F_Bz + F_H2 ;// Total feed - [mol]  

// Use Eqn. 12.1 to get extent of reaction -(ex_r)
ex_r = con_Bz*F_Bz/(-(-1)) ;// Extent of reaction

// get composition of P by using overall species balances
P_Bz = F_Bz -1*(ex_r) ;// Benzene in P ,by benzene balance - [mol]
P_H2 = F_H2 + -3*(ex_r) ;// H2 in P ,by H2 balance - [mol]
P_C6H12 = 0 + 1*(ex_r) ;// Cyclohexane in P ,by cyclohexane balance - [mol]
P = P_Bz + P_H2 + P_C6H12 ;// Total Product - [ mol]

// Use single pass conversion information to get recyle stream(R)
R = ((-(-ex_r))/(sp_con) - F_Bz)/(R_Bz/100) ;// Recycle stream - [mol]
R_by_F = R/F ;// Ratio of R to F 

printf('Ratio of R to F is %.2f .\n',R_by_F);

TLV = (P_Bz/P)*(1/TLV_Bz) + (P_H2/P)*(1/TLV_H2) + (P_C6H12/P)*(1/TLV_C6H12) ;// TLV (environmental index) 

printf('\n TLV (environmental index) is %.3f .\n',TLV);