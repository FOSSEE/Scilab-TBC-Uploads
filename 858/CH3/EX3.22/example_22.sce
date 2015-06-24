clc
clear 
printf("example 3.22 page number 110\n\n")

//to find the amount of air required for combustion and composition of flue gas
wt_C = 0.75   //in kg
wt_H2 = 0.05   //in kg
wt_O2 = 0.12   //in kg
wt_N2 = 0.03   //in kg
wt_S = 0.01    //in kg
wt_ash = 0.04  //in kg

O2_C = wt_C*(32/12);  //in kg
O2_H2 = wt_H2*(16/2);   //in kg
O2_S = wt_S*(32/32);   //in kg
O2_required = O2_C+O2_H2+O2_S;

oxygen_supplied = O2_required - wt_O2;
air_needed = oxygen_supplied/0.23;
printf("amount of air required = %f kg",air_needed)

volume = (22.4/28.8)*air_needed;
printf("\n\nvolume of air needed = %f cubic meter",volume)

air_supplied = 1.20*air_needed;
N2_supplied = air_supplied*0.77;
total_N2 = N2_supplied+wt_N2;

O2_fluegas = air_supplied*0.23 - oxygen_supplied;

wt_CO2 = wt_C+O2_C;
wt_SO2 = wt_S+O2_S;

moles_CO2 = wt_CO2/44;
moles_SO2 = wt_SO2/64;
moles_N2 = total_N2/28;
moles_O2 = O2_fluegas/32;
total_moles = moles_CO2+moles_SO2+moles_N2+moles_O2;

x_CO2 = moles_CO2/total_moles;
x_SO2 = moles_SO2/total_moles;
x_N2 = moles_N2/total_moles;
x_O2 = moles_O2/total_moles;

printf("\n\nCO2 = %f",x_CO2*100)
printf("\n\nSO2 = %f",x_SO2*100)
printf("\n\nN2 = %f",x_N2*100)
printf("\n\nO2 = %f",x_O2*100)
