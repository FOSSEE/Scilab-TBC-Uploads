//Calculate the Entropies change for the System ,Surrouding and Universe for the reaction N2(g)+3H2(g)=2NH3(g)

//Example 5.9

clc;

clear;

Sbar1=192.5;  //Standard Molar Entropy of NH3 in J K^-1 mol^-1

Sbar2=191.5;  //Standard Molar Entropy of N2 in J K^-1 mol^-1

Sbar3=130.6;  //Standard Molar Entropy of H2 in J K^-1 mol^-1

delSsys=(2*Sbar1)-((Sbar2)+(3*Sbar3));  // Entropy change for the system in J K^_1 mol^-1

printf("Entropy change of the System = %.0f J K^-1 mol^-1",delSsys);

T=298;  //Temperature in K

delHsys=-92.6;  //Enthalpy change of the system in kJ mol^-1

delHsur=-delHsys;  //Enthalpy change for the surroundind  in kJ mol^-1

delSsur=(delHsur*1000)/T;  //Entropy change for the surrouding in J K^_1 mol^-1

printf("\nEntropy chnage for the Surrouding = %.0f J K^-1 mol^-1",delSsur);

delSsur1=311;  //Entropy change for the surrouding in J K^_1 mol^-1(delSsur1=delSsur)

delSuniv=delSsys+delSsur1;  //Entropy change for the universe in J K^_1 mol^-1

printf("\nEntropy chnage for the Universe = %.0f J K^-1 mol^-1",delSuniv);
