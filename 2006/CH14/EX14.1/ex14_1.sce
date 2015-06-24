clc;
// From the Table 14.1 
del_hfHCL=92307; // Enthalpy of Heat in kJ/kmol
del_hfH2O=-241818; // Enthalpy of Heat kJ/kmol
del_Ho=4*del_hfHCL-2*del_hfH2O; // The standard heat of reaction from enthalpy equation
disp ("kJ   (answer mentioned in the textbook is wrong)",del_Ho,"The standard heat of reaction for the process = ");
