//developed in windows 8 operating system 64bit
//platform Scilab 5.4.1
//example 28_4w

clc;clear;
//Given Data

len_copper=75*10^-2;         //Length of the steel section(Unit:m)
len_steel=125*10^-2;         //Length of the steel section(Unit:m)
temp_copper=100;             //Temperature at the end of copper (Unit: degree centigrade)
temp_steel=0;               //Temperature at the end of steel (Unit: degree centigrade) 
k_copper=386;             //Thermal conductivity of the copper (Unit:J/m-s-degree centigrade)
k_steel=46;             //Thermal conductivity of the steel (Unit:J/m-s-degree centigrade)
diameter=2*10^-2;       //Diameter of the cross section (Unit:m^2)

//calculation

theta=(temp_copper-temp_steel)/((len_copper*k_steel/(len_steel*k_copper))+1);   //Calculation of The temperature at the junction  (Unit: degree centigrade)

rate_heat=k_steel*(%pi*diameter^2/4)*theta/len_steel;   //Calculation of The rate of heat flow  (Unit: J/s)

disp(theta,"The temperature at the junction is (Unit: degree centigrade)");
disp(rate_heat,"The rate of heat flow is (Unit: J/s)");
