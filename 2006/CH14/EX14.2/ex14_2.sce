clc;
del_Ho=5640000; // Heat released during the process
// From the Table 14.1 
del_hfO2=-393509; del_hfH2O=-285830; // Enthalpy of Heat in kJ/kmol
del_hfsucrose=12*del_hfO2+11*del_hfH2O+del_Ho; // The enthalpy formation of sucrose
disp ("kJ/kmol   (answer mentioned in the textbook is wrong)",del_hfsucrose,"The enthalpy formation of sucrose = ");
