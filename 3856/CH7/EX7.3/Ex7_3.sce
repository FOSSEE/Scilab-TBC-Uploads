//Caculate the Molal Solubility of Carbon Dioxide in water

//Example 7.3

clc;

clear;

Pco2=3.3*10^-4*760;  //Partial pressure of CO2 in air in torr

K=1.24*10^6;  //Henry's Law Constant in torr

Xco2=Pco2/K;  //Mole raction of solue (CO2)

nH2O=1000/18.01;  //Mole fraction of solvent (H2O)in mol^-1

nCO2=Xco2*nH2O;  //Molal solubility of CO2 in mol/kg(H2O)

printf("Molal Solubility of Carbon di Oxide = %.2f*10^-5 mol/kg",nCO2*10^5);

Kdes=29.3;  //Henry's Law Constant in atm mol^-1 kg^-1

m=(Pco2/760)/Kdes;  //Molal solubilty of CO2 in mol/kg(H2O)(Alternatively we can find out )(The answer vary  due to round off error)

printf("\nMolal solubility = %.2f*10^-5 atm mol^-1 kg^-1",m*10^5);
