//Calucate the Entopy change for Fusion and Vaporization

//Example 5.5

clc;

clear;

delfusH=6.01;  //Molar Enthalpy of fusion in kJ mol^-1

Tf=273;  //Melting point of ice in K

delfusS=(delfusH*1000)/Tf;  //Entropy change for fusion in J K^-1 mol^-1

printf("Entropy change for Fusion = %.1f J K^-1 mol^-1",delfusS);

delvapH=40.79;  //Molar enthalpy of vaporization in kJ mol^-1

Tb=373;  //Boiling point of water in K

delvapS=(delvapH*1000)/Tb;  //Entropy change for vaporization in J K^-1 mol^-1

printf("\Enentropy change for Vaporization = %.1f J K^-1 mol^-1",delvapS);
