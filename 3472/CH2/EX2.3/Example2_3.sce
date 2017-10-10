// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART I : GENERATION
// CHAPTER 2: THERMAL STATIONS

// EXAMPLE : 2.3 :
// Page number 26
clear ; clc ; close ; // Clear the work space and console

//Given data
consumption = 0.5       // Coal consumption per kWh output(kg)
cal_value = 5000.0      // Calorific value(kcal/kg)
n_boiler = 0.8          // Boiler efficiency
n_elec = 0.9            // Electrical efficiency

//Calculations
input_heat = consumption*cal_value                 // Heat input(kcal)
input_elec = input_heat/860.0                      // Equivalent electrical energy(kWh). 1 kWh = 860 kcal
loss_boiler = input_elec*(1-n_boiler)              // Boiler loss(kWh)
input_steam = input_elec-loss_boiler               // Heat input to steam(kWh)
input_alter = 1/n_elec                             // Alternator input(kWh)
loss_alter = input_alter*(1-n_elec)                // Alternate loss(kWh)
loss_turbine = input_steam-input_alter             // Loss in turbine(kWh)
loss_total = loss_boiler+loss_alter+loss_turbine   // Total loss(kWh)
output = 1.0                                       // Output(kWh)
Input = output+loss_total                          // Input(kWh)

//Results
disp("PART I - EXAMPLE : 2.3 : SOLUTION :-")
printf("\nHeat Balance Sheet")
printf("\nLOSSES:  Boiler loss      = %.3f kWh", loss_boiler)
printf("\n         Alternator loss  = %.2f kWh", loss_alter)
printf("\n         Turbine loss     = %.3f kWh", loss_turbine)
printf("\n         Total loss       = %.2f kWh", loss_total)
printf("\nOUTPUT:  %.1f kWh", output)
printf("\nINPUT:   %.2f kWh\n", Input)
