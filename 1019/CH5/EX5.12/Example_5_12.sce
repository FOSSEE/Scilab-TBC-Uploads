//Example 5.12
clear;
clc;

//Given
HfNH4NO3=-365;//enthalpy of formation of NH4OH in kJ mol^-1
HfH2=0;//enthalpy of formation of H2 in kJ mol^-1
HfH2O=-242;//enthalpy of formation of H2O in kJ mol^-1
HfN2H4=50;//enthalpy of formation of N2H4 in kJ mol^-1
SoNH4NO3=150;//Standard entropy of NH4NO3 molecule in J K^- mol^-1
SoH2=130;//Standard entropy of Hydrogen molecule J K^- mol^-1
SoH2O=189;//Standard entropy of H2O molecule J K^- mol^-1
SoN2H4=120;//Standard entropy of N2H4 molecule J K^- mol^-1
T=298;//Temperature in K

//To determine the free energy change
delHo=(3*HfH2O)+HfN2H4-HfNH4NO3-(3*HfH2);
delSo=(SoH2O*3)+SoN2H4-SoNH4NO3-(3*SoH2);
delGo=delHo-(T*delSo*10^(-3));
mprintf('Free energy change = %f kJ',delGo);
//end