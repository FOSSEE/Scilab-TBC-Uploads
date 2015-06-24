//Chapter 2
//Example 2.3
//Page 17

clear;
clc;

cost_per_annum = 300000;
cal_value = 5000;
cost_per_kg = 0.03;
n_thermal = 0.33;
n_electrical = 0.90;

n_overall = n_thermal*n_electrical;
printf("Overall efficiency = %.2f %% \n\n", n_overall*100);
coal_per_annum = cost_per_annum/cost_per_kg;
printf("Coal used/annum = %.2f kg\n\n", coal_per_annum);
hoc = coal_per_annum*cal_value;
//hoc-heat of combustion
printf("Heat of combustion = %.2f kcal \n\n", hoc);
heat_op = n_overall*hoc;
printf("Heat output = %.2f kcal \n\n", heat_op);
upa = heat_op/860;
//upa- units generated per annum
printf("Units generated per annum = %.0f kWh \n\n", upa);
avgl = upa/8760;
//avgl- average load on station
printf("Average load on station = %.1f kW \n\n", avgl);
