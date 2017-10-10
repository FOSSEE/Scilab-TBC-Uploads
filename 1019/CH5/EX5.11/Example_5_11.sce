//Example 5.11
clear;
clc;

//Given
DHoHH=435;//Bond dissociation energy of H-H bond in kJ mol^-1
DHoClCl=240;//Bond dissociation energy of Cl-Cl bond in kJ mol^-1
DHoHCl=430;//Bond dissociation energy of H-Cl bond in kJ mol^-1
SoH2=130.59;//Standard entropy of hydrogen molecule in J K^- mol^-1
SoCl2=222.95;//Standard entropy of chlorine molecule J K^- mol^-1
SoHCl=186.68;//Standard entropy of HCl molecule J K^- mol^-1
T=298;//Temperature in K

//To determine the free energy change
delHo=DHoHH+DHoClCl-(2*DHoHCl);
delSo=(SoHCl*2)-SoCl2-SoH2;
delGo=delHo-(T*delSo*10^(-3));
mprintf('Free energy change = %f kJ',delGo);
//end