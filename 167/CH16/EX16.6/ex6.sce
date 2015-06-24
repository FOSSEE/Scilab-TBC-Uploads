//example 6
//Enthalpy of Reaction of a Combustion Process 
clear
clc
NH2O=1 //No. of kmol of water
NH2=1 //No. of kmol of Hydrogen
NO2=0.5 //No. of kmol of Oxygen
hfH2O=-241820 //standard heat of formation of liquid water from elemental reactants in  kJ/kkmol
hH2O=82593 // in kJ/kmol
hoH2O=9904 //in kJ/kmol
hfH2=0 //standard heat of formation of H2
hH2=61400 //in kJ/kmol
hoH2=8468 //in kJ/kmol
hfO2=0 //standard heat of formation of O2
hO2=67881 //in kJ/kmol
hoO2=8682//in kJ/kmol
hr1=NH2O*(hfH2O+hH2O-hoH2O)-NH2*(hfH2+hH2-hoH2)-NO2*(hfO2+hO2-hoO2) //Enthalpy of reaction in kJ/kmol using enthalpy data
Ru=8.314 //Universal Gas Constant in kJ/kmol-K
T1=1800 //suitable temp. lower than and closest to 2000K in K
T2=2200 //suitable temp. higher than and closest to 2000K in K
Kp1=18509 //Equilbrium constant at T1
Kp2=869.6 //Equilbrium constant at T2
hr2=Ru*log(Kp2/Kp1)/((1/T1)-(1/T2)) //Enthalpy of reaction in kJ/kmol using Kp data
printf("\n Hence, Equilbrium Constant using Enthalpy data is = %.0f kJ/kmol. \n",hr1);
printf("\n Hence, Equilbrium Constant using Kp data is = %.0f kJ/kmol. \n",hr2);