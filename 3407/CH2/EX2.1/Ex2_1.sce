clear all;
clc;
funcprot(0);

//given data
gamma = 1.4;
pi = 8;//pressure ratio
T01 = 300;//inlet temperature in K
T02 = 586.4;//outlet temperature in K

//Calculations
//Calculation of Overall Total to Total efficiency
Tot_eff = ((pi^((gamma-1)/gamma))-1)/((T02/T01)-1);

//Calculation of polytropic efficiency
Poly_eff = ((gamma-1)/gamma)*((log(pi))/log(T02/T01));

//Results
printf('The Overall total-to-total efficiency is %.2f.\n',Tot_eff);
printf('The polytropic efficiency is %.4f.',Poly_eff);
