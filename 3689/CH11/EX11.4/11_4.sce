////Variable Declaration
E01 = +1.36             //Std. electrode potential for Cl2/Cl
dE0bydT = -1.20e-3      //V/K
F = 96485               //Faraday constant, C/mol
n = 2.
S0H = 0.0               //Std. entropy J/(K.mol) for H+ ,Cl-,H2, Cl2 
S0Cl = 56.5
S0H2 = 130.7
S0Cl2 = 223.1
[nH,nCl,nH2,nCl2] = (2,2,-1,-1)
//Calculations
dS01 = n*F*dE0bydT
dS02 =nH*S0H + nCl*S0Cl + nH2*S0H2 + nCl2*S0Cl2

//Results
printf("\n Std. entropy change of reaction from dE0bydT is %4.2e and\nStd entropy values is %4.2e V",dS01,dS02)

