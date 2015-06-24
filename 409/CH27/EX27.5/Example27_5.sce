clear ;
clc;
// Example 27.5
printf('Example 27.5\n\n');
//page no. 850
// Solution 

// Given 
V1 = 5 ;// Volume of gas initially - [cubic feet]
P1 = 1 ;// Initial pressure - [atm]
P2 = 10 ;// Final pressure - [atm]
T1 = 100 + 460 ;// initial temperature - [degree Rankine]
R = 0.7302 ;// Ideal gas constant -[(cubic feet*atm)/(lb mol)*(R)]
//Equation of state pV^1.4 = constant

//(a)
//Energy balance reduces to del_E = del_U = del_W 
V2 = V1*(P1/P2)^(1/1.4) ;// Final volume - [cubic feet]    
W1_rev = integrate('-(P1)*(V1/V)^(1.4)','V',V1,V2) ;// Reversible work done in compresion in a horizontal cylinder with piston -[cubic feet *atm]
W1 = W1_rev *1.987/.7302 ;// Conversion to Btu -[Btu]

printf('\n (a)Reversible work done in compression in a horizontal cylinder with piston is %.1f Btu .\n ',W1);

//(b)
n1 = (P1*V1)/(R*T1) ;// Number of moles of gas
W2_rev = integrate('(V1)*(P1/P)^(1/1.4)','P',P1,P2) ;// Reversible work done in compresion in a rotary compressor -[cubic feet *atm]
W2 = W2_rev *1.987/.7302 ;// Conversion to Btu -[Btu]

printf('\n (b)Reversible work done in a rotary compressor is %.1f Btu .\n ',W2);