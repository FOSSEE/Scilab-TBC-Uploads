clear ;
clc;
// Example 8.7
printf('Example 8.7\n\n');
// Page no. 213
// Solution

// Write given data
B_in =  1.1 ;// Flow rate in  of blood -[L/min]
B_out = 1.2;// Flow rate out of blood -[L/min]
S_in = 1.7;// Flow rate in  of solution -[L/min]

// Composition of input blood
B_in_CR = 2.72 ;//[g/L]
B_in_UR = 1.16 ;//[g/L]
B_in_U = 18 ;//[g/L]
B_in_P = 0.77 ;//[g/L]
B_in_K = 5.77 ;//[g/L]
B_in_Na = 13.0 ;//[g/L]
B_in_water = 1100 ;//[mL/min]

// Composition of output blood
B_out_CR = 0.120 ;//[g/L]
B_out_UR = 0.060;//[g/L]
B_out_U = 1.51 ;//[g/L]
B_out_P = 0.040 ;//[g/L]
B_out_K = 0.120 ;//[g/L]
B_out_Na = 3.21 ;//[g/L]
B_out_water = 1200 ;//[mL/min]

n_un = 7 ;// Number of unknowns in the given problem
n_ie  = 7 ;// Number of independent equations
d_o_f =  n_un-n_ie ;// Number of degree of freedom
printf('Number of degree of freedom for the given system is  %i .\n\n',d_o_f);

// Water balance in grams, assuming 1 ml is equivalent to 1 g
S_in_water = 1700 ;//[ml/min]
S_out_water =  B_in_water+ S_in_water - B_out_water;
S_out = S_out_water/1000 ;//[L/min]
printf(' Flow rate of water in output solution is  %.2f L/min.\n\n',S_out);

// The component balance in grams for CR,UR,U,P,K and Na are
S_out_CR  =  (B_in*B_in_CR - B_out*B_out_CR)/S_out;
S_out_UR  =  (B_in*B_in_UR - B_out*B_out_UR)/S_out;
S_out_U  =  (B_in*B_in_U - B_out*B_out_U)/S_out;
S_out_P  =  (B_in*B_in_P - B_out*B_out_P)/S_out;
S_out_K  =  (B_in*B_in_K - B_out*B_out_K)/S_out;
S_out_Na  =  (B_in*B_in_Na - B_out*B_out_Na)/S_out;
printf(' Component     Concentration(g/L) in output Dialysis solution   \n');
printf(' UR            %.2f    \n',S_out_UR);
printf(' CR            %.2f    \n',S_out_CR);
printf(' U             %.2f    \n',S_out_U);
printf(' P             %.2f    \n',S_out_P);
printf(' K             %.2f    \n',S_out_K);
printf(' Na            %.2f    \n',S_out_Na);