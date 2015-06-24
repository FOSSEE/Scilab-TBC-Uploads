clc
clear 
printf("example 3.24 page number 112\n\n")

//to find volumetric composition of flue glass

wt_H2 = 0.15;
wt_C = 0.85;
O2_H2 = wt_H2*(16/2);
O2_C = wt_C*(32/12);

total_O2 = O2_H2+O2_C;

wt_air = total_O2/0.23;

air_supplied = 1.15*(wt_air);
N2_supplied = 0.77*air_supplied/28;
O2_supplied = 0.23*(air_supplied-wt_air)/32;
moles_CO2 = 0.85/12;

printf("moles of CO2 = %f kmol\n\n",moles_CO2)
printf("moles of N2 = %f kmol \n\n",N2_supplied)
printf("moles of O2 = %f kmol\n\n",O2_supplied)

total_moles = N2_supplied+O2_supplied+moles_CO2;

printf("percentage of CO2 = %f\n\n",(moles_CO2/total_moles)*100)
printf("percentage of N2 = %f\n\n",(N2_supplied/total_moles)*100)
printf("percentage of O2 = %f",(O2_supplied/total_moles)*100)
