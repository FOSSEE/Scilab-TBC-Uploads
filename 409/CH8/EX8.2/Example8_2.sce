clear ;
clc;
// Example 8.2
printf('Example 8.2\n\n');
// Page no. 199
// Solution Fig. E8.2b

F_O2 = 0.21 ;// fraction of O2 in feed(F) 
F_N2 = 0.79 ;// fraction of N2 in feed(F) 
P_O2 = 0.25 ;// fraction of O2 in product(P)
P_N2 = 0.75 ;// fraction of N2 in  product(P)
F = 100 ;// Feed - [g mol]
w = 0.80 ;// Fraction of waste
W = w*F ;// Waste -[g mol]

// By analysis for degree of freedom , DOF comes to be zero 
P = F - W ;// By overall balance - [g mol]
W_O2 = (F_O2*F - P*P_O2)/100 ;// Fraction of O2 in waste stream by O2 balance 
W_N2 = (W - W_O2*100)/100 ;//Fraction of N2 in waste stream
 
printf('Composition of Waste Stream\n' );
printf('\n  Component             Fraction in waste stream\n' );
printf('  O2                    %.2f\n',W_O2 );
printf('  N2                    %.2f\n',W_N2 );