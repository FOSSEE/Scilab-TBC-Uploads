clear;
clc;

//Example - 7.31
//Page number - 268
printf("Example - 7.31 and Page number - 268\n\n");

// The clapeyron equation is
// (dP/dT)_sat = delta_H_fus/(T*delta_V_fus)

//(1)
// At 1 bar
// Considering the data given at pressure 1 and 1000 bar, we have
delta_H_fus_1 = ((1000-1)*10^(5)*(273.15-22.6)*3.97*10^(-6))/(14.8+22.6);//[J/mol]
delta_S_fus_1 = delta_H_fus_1/(273.15-22.6);//[J/mol-K]

printf(" (1).The delta_H_fus at 1 bar is %f J/mol\n",delta_H_fus_1);
printf("     The delta_S_fus at 1 bar is %f J/mol-K\n\n",delta_S_fus_1);

//(2)
// At 6000 bar
T_mean = (128.8+173.6)/2;//[C] - Mean temperature
T_mean = T_mean + 273.15;//[K]
delta_V_fus_mean = (1.12+1.55)/2;//[cm^(3)/mol]

// Consider the data at pressure of 5000 and 7000 bar we get,
delta_H_fus_2 = ((7000-5000)*10^(5)*(T_mean*delta_V_fus_mean*10^(-6)))/(173.6-128.8);//[J/mol]
delta_S_fus_2 = delta_H_fus_2/T_mean;//[J/mol-K]

printf(" (2).The delta_H_fus at 6000 bar is %f J/mol\n",delta_H_fus_2);
printf("     The delta_S_fus at 6000 bar is %f J/mol-K\n\n",delta_S_fus_2);

