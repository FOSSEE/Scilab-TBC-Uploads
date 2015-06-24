clear
clc
T1=273;//in K
T2=283;//in K
R=8.314;//in J/Kmol
alpha1=0.04889;//absorption coefficients in /atm
alpha2=0.03802;//absorption coefficients in /atm
DelH=(2.303*R*log10(alpha2/alpha1))/((1/T1)-(1/T2));//enthalpy of solution
printf('DelH=%.1d J/mol',DelH)

//Answer comes negative,error in the textbook
//page 118
