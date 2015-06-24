clear;
clc;

//Example - 7.32
//Page number - 268
printf("Example - 7.32 and Page number - 268\n\n");

//Given
H_fus = 80;//[cal/g] - Heat of fusion at 0 C and 1 atm pressure
T = 0+273.15;//[K] - Temperature
vol_ratio = 1.091;// Ratio of the specific volume of ice and water.
sp_vol = 0.001;//[m^(3)/kg] - Specific volume of saturated liquid water.

// The clapeyron equation can be written as
// (dP/dT)_sat = T*delta V_LS/(delta H_LS) = (T*(V_ice - V_water))/(H_ice - H_water)
dP_dT = (T*(vol_ratio - 1)*10^(-3))/(-H_fus*4.186);//[K/kPa]

printf("The value of (dT/dP)_sat is %e K/kPa",dP_dT);


