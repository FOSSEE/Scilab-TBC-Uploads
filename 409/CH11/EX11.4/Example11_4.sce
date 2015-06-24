clear ;
clc;
// Example 11.4
printf('Example 11.4\n\n');
// Page no. 322
// Solution fig E11.4

//Basis : M = 1000 lb
M = 1000 ;//[lb]
//Given
F_s = 16/100 ;// Fraction of sugar in F
F_w = 25/100  ;// Fraction of  water in F
F_p = 59/100 ; // Fraction of pulp in F
D_p = 80/100 ; // Fraction of pulp in D
E_s = 13/100 ;// Fraction of sugar in E
E_p = 14/100 ;// Fraction of pulp in E
G_p = 95/100 ;// Fraction of pulp in G
H_s = 15/100 ;// Fraction of sugar in H
K_s = 40/100 ;// Fraction of sugar in K

// For crystallizer equations are 
K_w = 1 - K_s ;// summation of wt. fraction is 1
K = M/K_s ;// By sugar balance -[lb]
L = K_w*K ;// By water balance -[lb]

// For evaporator equations are 
H_w = 1- H_s ;//summation of wt. fraction is 1
H = K_s*K/H_s ;//By sugar balance -[lb]
J = H - K; //By overall balance -[lb]

// For screen equations are 
E_w = 1 - (E_p + E_s) ; // summation of wt. fraction is 1
// solve E and G by simultaneous eqn. obtained by overall and pulp balance
a1 = [1 -1;E_p -G_p] ;// Matrix of coefficients of unknown
b1 = [H;0] ;//Matrix of constants
x1 = a1\b1 ;// Matrix of solutions ,x1(1) = E, x1(2) = G
E = x1(1) ;//[lb]
G = x1(2) ;//[lb]
G_s = (E_s*E - H_s *H )/G ;// By sugar balance
G_w = 1 -(G_s + G_p) ;// summation of wt. fraction is 1

// For mill equations are 
// solve F and D by simultaneous eqn. obtained by overall and pulp balance
a2 = [1 -1;F_p -D_p] ;// Matrix of coefficients of unknown
b2 = [E;E_p*E] ;//Matrix of constants
x2 = a2\b2 ;// Matrix of solutions ,x2(1) = F, x2(2) = D
F = x2(1) ;//[lb] 
D = x2(2) ;//[lb]
D_s = (F_s*F - E_s *E )/D ;// By sugar balance
D_w = 1 -(D_s + D_p) ; // summation of wt. fraction is 1

S_rec = M/(F*F_s) ; // Fraction of sugar recovered 

printf('\nFlow streams and their respective compositions.\n');
printf('\n M = %.0f lb  \n',M);
printf('  Sugar: %.2f \n',1);

printf('\n L = %.0f lb  \n',L);
printf('  Water: %.2f\n',1);

printf('\n K = %.0f lb  \n',K);
printf('  Sugar: %.2f\n',K_s);
printf('  Water: %.2f\n',K_w);

printf('\n J = %.0f lb  \n',J);
printf('  Water: %.2f \n',1);

printf('\n H = %.0f lb  \n',H);
printf('  Sugar: %.2f\n',H_s);
printf('  Water: %.2f\n',H_w);

printf('\n G = %.0f lb  \n',G);
printf('  Sugar: %.3f\n',G_s);
printf('  Water: %.3f\n',G_w);
printf('  Pulp : %.2f\n',G_p);

printf('\n E = %.0f lb  \n',E);
printf('  Sugar: %.2f\n',E_s);
printf('  Water: %.2f\n',E_w);
printf('  Pulp : %.2f\n',E_p);

printf('\n D = %.0f lb  \n',D);
printf('  Sugar: %.3f\n',D_s);
printf('  Water: %.3f\n',D_w);
printf('  Pulp : %.2f\n',D_p);

printf('\n F = %.0f lb  \n',F);
printf('  Sugar: %.2f\n',F_s);
printf('  Water: %.2f\n',F_w);
printf('  Pulp : %.2f\n',F_p);