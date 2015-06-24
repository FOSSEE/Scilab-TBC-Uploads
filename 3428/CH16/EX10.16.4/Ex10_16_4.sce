//Section-10,Example-2,Page no.-CT.8
//To calculate enthalpy of combustion of Ethane.
clc;
dl_HCO2=-393.5              //dl_H(CO_2)
dl_HH2O=-285.8              //dl_H(H_2O)
dl_HC2H6=-84.6               //dl_H(C_2H_6)
dl_HE=((2*dl_HCO2)+(3*dl_HH2O))-(dl_HC2H6)
disp (dl_HE,'enthalpy of combustion of Ethane(kJ/mol)')
//dl_HE=-1739 kJmol^-1 is wrong in the book.
