clear ;
clc; 
//Page No.362
// Example 12.4
printf('Example 12.4\n\n');
// Solution fig.E12.4

// Given 
F = 100 ;// Overall feed/basis - [kg]
F_com = 0.10 ;// Mass fraction of component in fresh feed 
F_w = 0.90 ;// Mass fraction of water in fresh feed 
P_w = 0.10 ;// Mass fraction of water in product
P_com = 0.90 ;//Mass fraction of component in product
F_dash_com = 0.03 ;//Mass fraction of component in feed to reactor
W_w = 1 ;// Mass fraction of water in W(waste)
C_con = .40 ;// Fraction of conversion of component in reactor

// By analysis DOF is zero
// Take overall process as system 
P = F_com*F/P_com ;//By component balance- Product - [kg]
W = F - P ;// By overall balance - waste(W)- [kg]

//Take reactor plus product recovery unit as system
// Use Eqn. 10.1 for component balance
Rw = (F*F_com - F*F_com*C_con)/C_con ;// Mass of component in recycle(R) - [kg]

// Take mixer a system
F_dash = ( F*F_com + Rw  )/F_dash_com ;// By component balance - feed to reactor(F') -[kg]
R = F_dash - F ;// Recycle(R) - By total balance -[kg]
w = Rw/R ;// Mass fraction of component in recycle(R) 

printf('Recycle(R) stream-  %.0f kg \n',R);
printf(' Mass fraction of component in recycle(R)-   %.4f .\n',w);