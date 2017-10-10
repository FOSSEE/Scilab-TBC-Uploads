// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART I : GENERATION
// CHAPTER 7: TARIFFS AND ECONOMIC ASPECTS IN POWER GENERATION

// EXAMPLE : 7.18 :
// Page number 79-80
clear ; clc ; close ; // Clear the work space and console

// Given data
load_1 = 10.0*10**3        // Load per annum(kVA)
time_1 = 1800.0            // Time(hours)
load_2 = 6.0*10**3         // Load per annum(kVA)
time_2 = 600.0             // Time(hours)
load_3 = 0.25*10**3        // Load per annum(kVA)
time_3 = 400.0             // Time(hours)
rating_trans = 10.0*10**3  // Transformer rating(kVA)
pf = 0.8                   // Lagging power factor
n_fl_A = 98.3/100.0        // Full load efficiency of transformer A
n_fl_B = 98.8/100.0        // Full load efficiency of transformer B
loss_A = 70.0              // Core loss at rated voltage of transformer A(kW)
loss_B = 40.0              // Core loss at rated voltage of transformer B(kW)
cost_A = 250000.0          // Cost of transformer A(Rs)
cost_B = 280000.0          // Cost of transformer B(Rs)
interest_per = 0.1         // Interest and depreciation charges
cost_energy_unit = 3.0     // Energy costs per unit(Paise)

// Calculations
// Transformer A
output_A = rating_trans*pf                             // kW output at full load(kW)
input_A = output_A/n_fl_A                              // Input at full load(kW)
cu_loss_fl_A = input_A-output_A-loss_A                 // Copper loss at full load(kW)
cu_loss_2_A = (load_2/load_1)**2*cu_loss_fl_A          // Copper loss at 6 MVA output(kW)
cu_loss_3_A = (load_3/load_1)**2*cu_loss_fl_A          // Copper loss at 0.25 MVA output(kW)
ene_iron_loss_A = loss_A*(time_1+time_2+time_3)        // Energy consumed due to iron losses(kWh)
ene_cu_loss_A = time_1*cu_loss_fl_A+time_2*cu_loss_2_A+time_3*cu_loss_3_A  // Energy consumed due to copper losses(kWh)
total_loss_A = ene_iron_loss_A+ene_cu_loss_A           // Total loss per annum(kWh)
cost_energy_A = cost_energy_unit/100*total_loss_A      // Energy cost per annum due to losses(Rs)
// Transformer B
output_B = rating_trans*pf                             // kW output at full load(kW)
input_B = output_B/n_fl_B                              // Input at full load(kW)
cu_loss_fl_B = input_B-output_B-loss_B                 // Copper loss at full load(kW)
cu_loss_2_B = (load_2/load_1)**2*cu_loss_fl_B          // Copper loss at 6 MVA output(kW)
cu_loss_3_B = (load_3/load_1)**2*cu_loss_fl_B          // Copper loss at 0.25 MVA output(kW)
ene_iron_loss_B = loss_B*(time_1+time_2+time_3)        // Energy consumed due to iron losses(kWh)
ene_cu_loss_B = time_1*cu_loss_fl_B+time_2*cu_loss_2_B+time_3*cu_loss_3_B  // Energy consumed due to copper losses(kWh)
total_loss_B = ene_iron_loss_B+ene_cu_loss_B           // Total loss per annum(kWh)
cost_energy_B = cost_energy_unit/100*total_loss_B      // Energy cost per annum due to losses(Rs)
diff_capital = cost_B-cost_A                           // Difference in capital costs(Rs)
annual_charge = interest_per*diff_capital              // Annual charge due to this amount(Rs)
diff_cost_energy = cost_energy_A-cost_energy_B         // Difference in energy cost per annum(Rs)
cheap = diff_cost_energy-annual_charge                 // Cheaper in cost(Rs)

// Results
disp("PART I - EXAMPLE : 7.18 : SOLUTION :-")
printf("\nTransformer B is cheaper by Rs. %.f per year \n", cheap)
printf("\nNOTE: ERROR: Full load efficiency for transformer B is 98.8 percent, not 98.3 percent as given in problem statement")
printf("\n      Changes in obtained answer from that of textbook answer is due to more precision")
