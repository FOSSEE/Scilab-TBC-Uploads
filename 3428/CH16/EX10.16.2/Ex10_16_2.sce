//Section-10,Example-2,Page no.-CT.3
//To find dl_H for reduction of iron(III)by aluminium,
clc;
dl_HFe=0                  //dlH_f(Fe)
dl_HFAl2O3=-399.1         //dlH_f(Al_2O_3)
dl_HAl=0                  //dlH_f(Al)
dl_HFe2O3=-196.51          //dlH_f(Fe_2O_3)
dl_H=(2*dl_HFe+dl_HFAl2O3)-(2*dl_HAl+dl_HFe2O3)
disp (dl_H,'Enthalpy change for the reduction of 1 mol Fe_2O_3(kCal)')
