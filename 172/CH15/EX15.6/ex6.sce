//ques6
//determining heat transfer per kilomole of fuel entering combustion chamber
clear
clc
//1-CH4
//2-CO2
//3-H2O
//hf-standard enthalpy of given substance
hf1=-74.873;//kJ
hf2=-393.522;//kJ
hf3=-285.830;//kJ
Qcv=hf2+2*hf3-hf1;//kJ
printf('Heat transfer per kilomole of fuel entering combustion chamber = %.3f kJ ',Qcv);