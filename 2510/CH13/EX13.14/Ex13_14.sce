//Variable declaration:
//From example 13.4:
h1 = 548.0                          //Steam enthalpy at the entry and exit to the boiler (kJ/kg)
h2 = 3989.0                         //Steam enthalpy at the entry and exit to the turbine (kJ/kg)
h3 = 2491.0                         //Steam enthalpy at the entry and exit to the pump (kJ/kg)
h4 = 448.0                          //Steam enthalpy at the entry and exit to the condenser (kJ/kg)
Qb = 3441.0                         //Enthalpy change across the boiler (kJ/kg)

//Calculation:
Wt = h2 - h3                        //Work produced by the turbine (kJ/kg)
Wp = h1 - h4                        //Work used by the pump (kJ/kg)
W_net = Wt - Wp                     //Net work by subtracting the pump work from the turbine work (kJ/kg)
n_th = W_net/Qb                     //Thermal efficiency

//Result:
printf("The thermal efficiency is : %.1f %%.",n_th*100)
