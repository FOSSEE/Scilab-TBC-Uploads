//example 9
//reversible work associated with combustion process
clear
clc
NCO2=1 //mass of CO2 in lbmol
gfCO2=-169680 //Enthalpy of formation for CO2 in Btu/lbmol
Wrev=-NCO2*gfCO2 //Reversible work for the given prcess in Btu
printf("\n Hence, the reversible work for this process is = %.0f Btu. \n",Wrev);