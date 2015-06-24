// Exa 8.19
clc;
clear;
close;
// Given data
GCR= 110;// gas consumption rate in m^3/hour
rpm= 300;// round per minute
Vs= 0.1;// swept volume of engine in m^3
V_H2=0.50;// in m^3
V_CO= 0.05;// in m^3
V_CH4=0.25;// in m^3
V_CO2= 0.10;// in m^3
V_N2= 0.10;// in m^3
V_O2= 5.8;// in m^3
AirRequired= (0.5*(V_H2+V_CO)+2*V_CH4)/0.21;// in m^3
CO2_formed= V_CO+V_CH4;// in m^3
total_CO2= CO2_formed+V_CO2;// in m^3
N2_of_air= 0.79*AirRequired;// in m^3
total_N2= N2_of_air+V_N2;// in m^3
TotalVolume= total_N2+total_CO2;// in m^3
V= TotalVolume;// in m^3
ExcessAirSupplied= (V_O2*V)/(21-V_O2);// in m^3
TotalAirSupplied= ExcessAirSupplied+AirRequired;// in m^3
AirFuel_ratio= round(TotalAirSupplied)/1;
disp(AirFuel_ratio,"Air fuel ratio by volume is : ")
// Let V1= Volume of air + gas aspirated per hour
V1= GCR*6;// in m^3
Vs_out= Vs*rpm/2*60;// in m^3
Ratio= V1/Vs_out;
disp("The value of Ratio i.e.")
disp(Ratio,"(Volume of air + gas aspirted per hour)/Volume swept out by piston per hour")
