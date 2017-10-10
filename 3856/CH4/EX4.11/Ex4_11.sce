// Estimate the Enthaply of Combustion for Methane

//Exaample 4.11

clc;

clear;

H1=414; //Bond Enthalpy for a C-H bond in kJ mol^-1

H2=498.8; //Bond Enthalpy for a O-O bond in kJ mol^-1 

H3=799;  //Bond Enthalpy for a C=O bond kJ mol^-1

H4=460;  //Bond Enthalpy for a O-H bond kJ mol^-1

delHr=((4*H1)+(2*H2))-((2*H3)+(4*H4)); //Enthalpy of the reaction kJ mol^-1

printf("Enthalpy Change of combustion of methane = %.1f kJ mol^-1",delHr);

H5=-393.5;  //Enthalpy of formation of CO2 kJ mol^-1

H6=-241.8;  //Enthalpy of formation of H2O kJ mol^-1

H7=-74.85;  //Enthalpy of formation of CH4 kJ mol^-1

delHf=(H5+(2*H6))-H7; //Enthalpy of formation kJ mol^-1

printf("\nEnthalpy Change of combustion of methane from enthalpy of formation = %.1f kJ mol^-1",delHf);
