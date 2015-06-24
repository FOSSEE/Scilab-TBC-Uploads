clear ;
clc;
// Example 14.3
printf('Example 14.3\n\n');
//Page No. 448
// Solution 

// Given
Tc = 100 ;// Temperature  -[degree C] 
T   =  273 +Tc ;// Temperature -[K] 
P   =  90 ;// Pressure [atm]
R = 82.06 ;// gas constant-[(cubic centimetre * atm)/(g mol * K)]
Y_CH4  = 20/100 ;// [mole fraction]
Y_C2H4 = 30/100 ;// [mole fraction]
Y_N2   =  50/100 ;//[mole fraction]

//Additional information from appendix D
Tc_CH4 = 191 ;//[K]
Pc_CH4 = 45.8 ;// [atm]
Tc_C2H4 = 283 ;//[K]
Pc_C2H4 = 50.5 ;// [atm]
Tc_N2 = 126 ;//[K]
Pc_N2 = 33.5 ;// [atm]

//(a)-Ideal gas law
V_sp1 = R * T/P ;// Molar volume-[cubic centimetre/g mol]
printf('(a) The volume per mole of mixture by ideal gas law is %.1f cubic centimetre/g mol.\n',V_sp1);

//(b)
Pc_mix = Pc_CH4 * Y_CH4+Pc_C2H4 * Y_C2H4+Pc_N2 * Y_N2;// [atm]
Tc_mix = Tc_CH4 * Y_CH4+Tc_C2H4 * Y_C2H4+Tc_N2 * Y_N2 ;// [K]
Pr_mix = P/Pc_mix;
Tr_mix = T/Tc_mix;
// With 2 parameters(Pr_mix and Tr_mix) , you can find from figure 14.4b that z * Tr_mix = 1.91
z = 1.91/Tr_mix;
V_sp2 = z * R * T/P ;// Molar volume-[cubic centimetre/g mol]
printf('\n(b) The volume per mole of mixture by treating it to be real gas is %.1f cubic centimetre/g mol.',V_sp2);