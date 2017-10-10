//Calculate the standard molar  Enthalpy of activation (delH),standard molar Entropy of activation (delS)and Standard molar Gibbs energy of activation (delG) for the reaction CH3NC(g)=CH3CN(g)

//Example 12.2

clc;

clear;

k=4.0*10^13;  //Pre exponential factor in s^-1

KB=1.381*10^-23;  //Boltzman constant in J K^-1

h=6.626*10^-34;  //Planck's constant in J s

R=8.314;  //Gas constant in J K^-1 mol^-1

T=300;  //Absolute temperature in K

e=2.718;  //ln constant
  
delS=log((k*h)/(e*KB*T))*R;  // Standard molar Entropy in J K^-1 mol^-1
 
printf("Standard molar Entropy = %.2f J K^-1 mol^-1",delS);

Ea=272;  //Activation Energy in kJ mol^-1

delH=Ea-(R*T/1000);  //Standard molar Enthalpy in kJ mol^-1

printf("\n Standard molar Enthalpy = %.0f kJ mol^-1",delH);

delG=delH-(T*delS/1000);  //Standard molar Gibbs energy in kJ mol^-1(The answer vary due to round off error)

printf("\n Standard molar Gibbs Energy = %.3f kJ mol^-1",delG);
