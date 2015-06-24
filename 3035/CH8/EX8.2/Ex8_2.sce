// Variable Declaration
P = 250.0       //Power(MW)
C = 6100.0      //Calorific value(kcal/kg)
n_1 = 0.9       //Plant runs at full load
h_1 = 20.0      //Time for full load(hour)
n_2 = 0.75      //Plant runs at full load
h_2 = 4.0       //Time for full load(hour)
n_t = 0.3       //Thermal efficiency
n_g = 0.93      //Generator efficiency

// Calculation Section
E_T = (P*n_1*h_1+P*n_2*h_2)*1000    //Total electric energy produced by plant in a day(kWh)
efficiency = n_t * n_g              //Overall efficiency of the plant
heat_energy = E_T*860/efficiency    //Heat energy of combustion of coal(kcal)
coal_requ = heat_energy/C           //Daily coal requirement(kg)
coal_requ_ton = coal_requ*10**-3    //Daily coal requirement(tonnes)

// Result Section
printf('Daily coal requirement = %.2e kg = %.f tonnes' ,coal_requ,coal_requ_ton)
