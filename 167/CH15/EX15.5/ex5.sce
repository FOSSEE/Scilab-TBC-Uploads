//example 5
//Evaluation of the Enthalpy of Combustion
clear
clc
hfCO2=-393520 //enthalpy of formation of CO2 in kJ/kmol
hfH2O=-285830 //enthalpy of formation of H2O in kJ/kmol
hfC8H18=-249950 //enthalpy of formation of octane in kJ/kmol 
NCO2=8 //No. of kmol of CO2 
NH2O=9 //No. of kmol of H2O
NC8H18=1 //No. of kmol of C8H18
hc=NCO2*hfCO2+NH2O*hfH2O-NC8H18*hfC8H18 //Enthalpy of combustion of octane in kJ/kmol
hc=hc/114 //enthalpy of combustion in kJ/kg
printf("\n Hence, the enthalpy of combustion of liquid octane is = %.0f kg air/kg C8H18. \n",hc);
