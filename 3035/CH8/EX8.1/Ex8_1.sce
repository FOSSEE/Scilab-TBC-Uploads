// Variable Declaration
w = 0.8     //Coal to be burnt for every kWh of electric energy(kg)
C = 5000    //Calorific value of coal(kilo-calories/kg)

// Calculation Section
heat_energy = C*w/860       //Heat energy of combustion of given coal(kWh)
efficiency = 1/heat_energy  //Overall efficiency


// Result Section
printf('Overall efficiency of the plant = %.3f' ,efficiency)
