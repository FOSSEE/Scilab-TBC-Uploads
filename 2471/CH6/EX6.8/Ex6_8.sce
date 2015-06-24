clear ;
clc;
// Example 6.8
printf('Example 6.8\n\n');
printf('Page No. 156\n\n');

// given
H = 0.05;// Hydrogen percentage - [%]
O = 0.08;// Oxygen percentage - [%]
C = 0.86;// Carbon percentage - [%]
S = 0.001;// Sulphur percentage - [%]

G_CV = ((33.9*C)+143*(H-(O/8))+(9.1*S))*10^6;
printf('The gross calorific value is %3.2e J/kg \n',G_CV)


N_CV = ((33.9*C)+121*(H-(O/8))+(9.1*S))*10^6;
printf('The net calorific value is %3.1e J/kg',N_CV)


