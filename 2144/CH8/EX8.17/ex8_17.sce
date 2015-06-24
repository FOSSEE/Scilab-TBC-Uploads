// Exa 8.17
clc;
clear;
close;
// Given data
V_H2= 0.15;// in m^3
V_CH4= 0.02;// in m^3
V_CO= 0.20;// in m^3
V_CO2= 0.06;// in m^3
V_O2= 0.03;// in m^3
V_N2= 0.54;// in m^3
V1= 0.5*V_H2;// quantity of O2 required for complete combustion of H2
V2= 2*V_CH4;// in m^3
V3= 0.5*V_CO;// in m^3
V= V1+V2+V3;// total oxygen required in m^3
O2_supp= V-V_O2;// O2 to be supplied by air in m^3
Air_req_min= O2_supp/0.21;// minimum quantity of air required in m^3
Actual_Air_Supp= 1.5*Air_req_min;// m^3 of air
disp(Actual_Air_Supp,"The volume of air supplied  in m^3")
Vol_Carbondioxide_inFlue= V_CO2+V_CH4+V_CO;//total volume of carbon dioxide
Vol_O2_inFlue= (Actual_Air_Supp-Air_req_min)*0.21;// in m^3
N2_from_air_Supp= 0.79*Actual_Air_Supp;// in m^3
Vol_N2_inFlue= N2_from_air_Supp+V_N2;// in m^3
total= Vol_Carbondioxide_inFlue+Vol_O2_inFlue+Vol_N2_inFlue;// in m^3
Per_CarbonDioxide= Vol_Carbondioxide_inFlue/total*100;// in %
Per_Oxygen= Vol_O2_inFlue/total*100;// in %
Per_Nitrogen= Vol_N2_inFlue/total*100;// in %
disp(Per_CarbonDioxide,"% Carbon dioxide is : ")
disp(Per_Oxygen,"% Carbon dioxide is : ")
disp(Per_Nitrogen,"% Carbon dioxide is : ")
