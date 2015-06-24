clear;
clc; 
//Page No.369
// Example 12.6
printf('Example 12.6\n\n');
// Solution fig.E12.6

// Given 
F = 100 ;// Overall feed/basis - [mole]
F_H2 = 0.673 ;// Mole fraction of H2 in overall feed 
F_CO = 0.325 ;// Mole fraction of i_C5H12in overall feed 
F_CH4 = .002 ;// Mole fraction of CH4 in overall feed 
E_CH3OH = 1 ;//  Mole fraction of CH3OH in Exit(E)
// Let x , y and z be Mole fraction of H2,CO and CH4 respectively in recycle(R) and purge(P)
z = .032 ;
CO_con = .18 ;// Fraction of conversion of CO in reactor

// Following eqn. are obtained by Materal balances 
// x + y + z = 1             eqn.(a)
// F_H2*F + F_CH4*F*2 = E*2 + P*(x + 2z)   - By H2 balance     eqn.(b)
// F_CO*F + F_CH4*F = E + P*(y + z)   -By C balance    eqn.(c)
// F_CO*F  = E + P*y    - By O balance  eqn.(d)
// F_CO*F + Ry - Ry - Py = (F_CO*F + Ry)*CO_con   - By CO balance   eqn.(e)

//By using eqn.(c) and (d)
P = F_CH4*F/z ;// Purge stream - [mole]

// Using eqn.(a) , (b) and (c)
x_plus_y = 1 - z ;// x + y 
E = (F_H2*F + F_CO*F + 3*F_CH4*F - P*(x_plus_y + 3*z ))/3 ;// Exit stream - [mole]

// By using eqn. (d)
y = ( F_CO*F - E )/P ;// Mole fraction of CO 

// By using eqn. (a)
x = 1 - z - y ;// Mole fraction of H2 

// Lastly by using eqn.(e)
R = ( F_CO*F - P*y - F_CO*F*CO_con )/(y*CO_con) ;// Recycle steam - [mole]

printf('Moles of recycle(R) per mole of feed(F) -                      %.4f \n',R/F);
printf(' Moles of CH3OH(E) per mole of feed(F)   -                      %.4f \n',E/F);
printf(' Moles of Purge(P) per mole of feed(F)   -                      %.4f \n',P/F);
printf('\n Composition of Purge \n');
printf('  Component                 Mole fraction \n');
printf('  H2                        %.3f \n',x);
printf('  CO                        %.3f \n',y);
printf('  CH4                       %.3f \n',z);