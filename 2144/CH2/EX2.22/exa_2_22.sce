// Example 2.22
clc;
clear;
close;
// Given data
CO2= 0.12;//volume of CO2 in m^3
CO= 0.25;// in m^3
H2= 0.06;// in m^3
CH4= 0.02;// in m^3
N2= 0.55;// in m^3
R= 8.3143;// Universal gas constant in kJ/kg-mol-K
mm_CO2= 44;// molecular mass of CO2
mm_CO= 28;
mm_H2= 2;
mm_CH4= 16;
mm_N2= 28;
Gm_CO2= 5.28;// gravimetric mass of CO2
Gm_CO= 7.00;
Gm_H2= 0.12;
Gm_CH4= 0.32;
Gm_N2= 15.40;
total_Gm= Gm_CO2+Gm_CO+Gm_H2+Gm_CH4+Gm_N2;
Per_relative_CO2= Gm_CO2/total_Gm*100;// in %
Per_relative_CO= Gm_CO/total_Gm*100;// in %
Per_relative_H2= Gm_H2/total_Gm*100;// in %
Per_relative_CH4= Gm_CH4/total_Gm*100;// in %
Per_relative_N2= Gm_N2/total_Gm*100;// in %
disp("Analysis % Relative : ")
disp("CO2   :   "+string(Per_relative_CO2))
disp("CO     :   "+string(Per_relative_CO))
disp("H2      :   "+string(Per_relative_H2))
disp("CH4   :   "+string(Per_relative_CH4))
disp("N2     :   "+string(Per_relative_N2))
App_Gas_Constant= R/total_Gm;// in kJ/kg-K
mol_Vol= 22.4;//mole volume at NTP in m^3
Average_Density= total_Gm/mol_Vol;// in kg/m^3 at NTP
disp(App_Gas_Constant,"The Apparent gas constant in kJ/kg-K is : ")
disp(Average_Density,"The average density in kg/m^3 at NTP. is : ")
