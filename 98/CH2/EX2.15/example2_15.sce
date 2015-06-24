//Chapter 2
//Example 2_15
//PAge 30

clear;clc;

fc=1e3;
ugpd=4e3;
cv=1e4;
n_alternator=0.96;
n_mech=0.95;

//specific fuel consumption
printf("(i)\t Specific fuel consumption = %.2f kg/kWh \n\n", fc/ugpd);

//overall efficiency
heat_per_day = fc*cv;
e=ugpd*860;
printf("\t\t Electrical output in heat units per day =%3.0f kcal \n\n", e);
n_overall = e/1e7*100;
printf("(ii)\t Overall efficiency = %.2f %% \n\n", n_overall);

//thermal efficiency
n_engine = n_overall/n_alternator;
printf("\t\t Engine efficiency = %.2f %% \n\n", n_engine);
printf("(iii)\t Thermal efficiency = %.2f %% \n\n", n_engine/n_mech);
