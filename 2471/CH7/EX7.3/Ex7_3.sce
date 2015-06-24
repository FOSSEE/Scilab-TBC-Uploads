clear;
clc;
// Example 7.3
printf('Example 7.3\n\n');
printf('Page No. 203\n\n');

// given
C = 250*10^3;//Original annual cost of fuel in Pound
O_E = 71.5;// Original Efficiency
Fl_i = 20;// Initial Flue loss 
Fl_f = 17.5;// Final Flue loss 
N_E = O_E + (Fl_i - Fl_f);// New Efficiency
F_save = C*((N_E-O_E)/N_E);// in Pound
printf('Fuel saving is %.0f Pound per year',F_save)
//Deviation in answer is due to some calculation approximation the book
