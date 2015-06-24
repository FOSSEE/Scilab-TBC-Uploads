T=298;//temperature in kelvin//
E=0.22;//emf of the cell in volts//
dE=-0.00065;//Temperature coefficient of the emf in volt per degree//
c=4.184;//1 cal =4.184 joules//
n=1;
F=96500;//1Farad value//
printf('The positive electrode is the cathode and the negative electrode is the anode in a galvanic cell\nAnode reaction 1/2H2 = H+ + e-\nCathode reaction AgCl + e- = Ag+ + Cl-\nCell reaction 1/2H2 + AgCl = Ag+ + H+ + Cl-');
dG=-n*F*E/c;//free energy change in the cell in cal per mol//
printf('\nFree energy change in the cell=dG=%fcal per mol',dG);
dH=dG+(n*F*T*dE/c);//Enthalpy change in the cell//
printf('\nEnthalpy change in the cell=dH=%fcal per mol',dH);
dS=(dH-dG)/T;//Entropy change in the cell in cal per deg//
printf('\nEntropy change in the cell=dS=%fcal per deg',dS);
