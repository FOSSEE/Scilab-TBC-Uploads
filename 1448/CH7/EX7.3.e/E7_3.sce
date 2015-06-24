clc
//Initialization of variables
aADP=1 //mol/L
aP=1 //mol/L
aATP=1 //mol/L
aH2O=1 //mol/L
aH=10^-7 //mol/L
G=10 //kJ/mol
T=298 //K
R=8.314 //J/K mol
//calculations
Q=aADP*aP*aH/(aATP*aH2O)
Gr=G+R*T*log(Q)/1000.
//results
printf('Change in nGibbs energy =%d kJ/mol',Gr-1)
