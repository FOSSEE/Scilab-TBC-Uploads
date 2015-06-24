clear ;
clc;
// Example 23.9
printf('Example 23.9\n\n');
//page no. 704
// Solution 

//Given
mv = 1 ;// Mass of saturated vapour - [lb]
P1 = 2 ;// Initial pressure -[atm]
P2 = 20 ;// Final pressure -[atm]

// Additional data is obtained from figure 23.6 of the book on page no. 703
H_2 = 179 ;// Specific enthalpy at 2 atm - [Btu/lb]
H_20 = 233 ;//  Specific enthalpy at 20 atm - [Btu/lb]
V_2 = 3.00 ;// Specific volume at 2 atm - [cubic feet/lb]
V_20 = 0.30 ;//  Specific volume at 20 atm - [cubic feet/lb]
T_2 = 72 ;// Temperature at 2 atm -[degree F]
T_20 = 239 ;// Temperature at 20 atm -[degree F]
del_H = H_20 - H_2 ;// Change in specific enthalpy -[Btu/lb] 
del_V = V_20 - V_2 ;// Change in specific volume -[cubic feet/lb] 
del_T = T_20 - T_2 ;// Change in temperature -[degree F]
printf('(a) Change in specific enthalpy is %.0f Btu/lb.\n',del_H);
printf(' (b) Change in specific volume is %.2f cubic feet/lb.\n',del_V);
printf(' (c) Change in temperature is %.1f degree F.\n',del_T);