clear;
clc;
//Page No.359
// Example 12.3
printf('Example 12.3\n\n');
// Solution fig.E12.3a and fig.E12.3b

// Given 
// Main reaction - C6H12O6(d-glucose) --> C6H12O6(d-fructose)

RR = 8.33 ;// Recycle ratio
F = 100 ;// Overall feed/basis - [lb]
F_g = 0.40 ;// Fraction of glucose in overall feed 
F_w = 0.60 ;// Fraction of water in overall feed 
F_dash_f = 0.04 ; // Fraction of fructose in feed to reactor
P = F ;// By overall balance -[lb]
R = P/RR ;// Recycle stream - [lb]
P_w = (F_w * F)/ P ;// Fraction of water in product(P), by overall water balance
R_w = P_w ;//Fraction of water in recycle (R), since both R and P has same composition

// Mixing point 1
F_dash = F +R ;// Feed to reactor ,by total balance -[lb]
R_f = (F_dash*F_dash_f)/R ;// Fraction of fructose in recycle stream 
R_g = 1 - (R_f + R_w) ;// Fraction of glucose in recycle stream
F_dash_g = (F*F_g + R*R_g)/F_dash ;// Fraction of glucose i feed to reactor

// Make glucose balance in reactor to get fraction of conversion (f_con)
f_con = ((F_dash*F_dash_g) - (R + P)*R_g)/(F_dash*F_dash_g) ;// Fraction of conversion of glucose in reactor

printf('Fraction of conversion of glucose in reactor is %.2f .\n',f_con);