clear;
clc;
// Example 11.2
printf('Example 11.2\n\n');
// Page no.315
// Solution

//Basis:1 hr
G = 1400 ;//[kg]
//Unit 1
// Degree of freedom analysis 
n_un = 16 ;// Number of unknowns in the given problem(excluding extent of reactions)
n_ie  = 16 ;// Number of independent equations
d_o_f =  n_un-n_ie ;// Number of degree of freedom
printf('For unit 1 number of degree of freedom for the given system is  %i .\n',d_o_f);
//Given
o1_air = 0.995 ;// Mass fraction of air at out of unit 1 in A
i1_air = 0.95 ;// Mass fraction air at in of unit 1 in G
i1_wtr = 0.02;// Mass fraction water at in of unit 1 in G
F1_wtr = 0.81 ;// Mass fraction of water at out of unit 1 in F
o1_wtr = 0.005 ;// Mass fraction of water at out of unit 1 in A
o2_wtr = 0.96 ;// Mass fraction of water at out of unit 2 in B
o3_wtr = 0.01;// Mass fraction of water at out of unit 3 in D
i1_act = 0.03 ;// Mass fraction of acetone at in of unit 1 in G
F1_act = 0.19 ;//  Mass fraction of acetone at out of unit 1 in F
o3_act = 0.99 ;//  Mass fraction of acetone at out of unit 3 in D
o2_act  = 0.04 ;//  Mass fraction of acetone at out of unit 2 in B

//Mass balance to get A ,W & F
A = G*i1_air/o1_air ;//air-[kg]
F = G*i1_act/F1_act ;//[kg]
W = (F*F1_wtr+A*o1_wtr-G*i1_wtr)/1 ;//Pure water in -[kg]
// unit 2 and 3
// Degree of freedom analysis 
n_un = 9 ;// Number of unknowns in the given problem(excluding extent of reactions)
n_ie  = 9 ;// Number of independent equations
d_o_f =  n_un-n_ie ;// Number of degree of freedom
printf(' For unit 2 and 3 number of degree of freedom for the given system is  %i .\n',d_o_f);
// Mass balance 
// solving eqn (d)& (e) simultaneously for D and B
a = [o3_act o2_act;o3_wtr o2_wtr];// Matrix formed by coefficients of unknown
b = [F*F1_act;F*F1_wtr];// Matrix formed by constant
x = a\b ;// Solution matrix-x(1) = D and x(2) = B
printf('\n W-Pure water in to unit 1  -  %.2f kg/hr\n',W);
printf(' A-Air out of unit 1        -  %.2f kg/hr\n',A);
printf(' F-out of unit 1            -  %.2f kg/hr\n',F);
printf(' B-out of unit 2            -  %.2f kg/hr\n',x(2));
printf(' D-out of unit 3            -  %.2f kg/hr\n',x(1));