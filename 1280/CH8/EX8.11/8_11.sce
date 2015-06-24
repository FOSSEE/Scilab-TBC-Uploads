clc
//initialisation of variables
Vm= 0.6 //in^3
N= 2400 //rpm
Qa= 6.5 //gpm
p= 50
//CALCULATIONS
ev= Vm*N*100/(Qa*231)
Tf= (100-ev)*Qa/100
Cl= p*Tf/100
//RESULTS
printf ('Case drain loss = %.3f gpm',Cl)
