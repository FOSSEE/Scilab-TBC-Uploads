clear ;
clc;
// Example 7.1
printf('Example 7.1\n\n');
printf('Page No. 201\n\n');

// given
C = 220*10^3;//Original annual cost of fuel in Pound
O_E = 73;// Original Efficiency
Fl_i = 20;// Initial Flue loss 
Fl_f = 18.7;// Final Flue loss 
N_E = O_E + (Fl_i - Fl_f);// New Efficiency
F_save = C*((N_E-O_E)/N_E);
printf('Fuel saving is %.0f Pound',F_save)
//Deviation in answer is due to some wrong calculation the book, instead of new efficiency in the denominator in line 13, the book has taken original efficiency
