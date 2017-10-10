//ques-18.30
//Calculating equilibrium constant for the given reaction
clc
T=278;//temperature (in K)
S=-333.3;//entropy change (in J/K/mol)
R=8.31;// J/K/mol
h1=-110.5;//heat of formation for CO (in kJ/mol)
h2=-74.8;//heat of formation for methane (in kJ/mol)
h3=-286;//heat of formation for water (in kJ/mol)
H=h2+h3-h1;//enthalpy change (in kJ/mol)
G=(H*1000)-T*S;//free energy change (in kJ/mol)
//On solving, log10(K) = -G/(2.303*R*T)
K=2.97;//(*10^26)
printf("The equilibrium constant required is %.2f*10^26.",K);
