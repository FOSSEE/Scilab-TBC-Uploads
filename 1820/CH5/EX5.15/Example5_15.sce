// ELECTRIC POWER TRANSMISSION SYSTEM ENGINEERING ANALYSIS AND DESIGN
// TURAN GONEN
// CRC PRESS
// SECOND EDITION

// CHAPTER : 5 : UNDERGROUND POWER TRANSMISSION AND GAS-INSULATED TRANSMISSION LINES

// EXAMPLE : 5.15 :
clear ; clc ; close ; // Clear the work space and console

// GIVEN DATA
L = 50 ; // length of transmission line in km
P_l_oh = 820 ; // Power loss at peak load for overhead transmission line in kW/km
P_l_g = 254 ; // Power loss at peak load for gas insulated transmission line in kW/km
cost_kwh = 0.10 // cost of electric energy in $ per kWh
lf_ann = 0.7 ; // Annual load factor
plf_ann = 0.7 ; // Annual Power loss factor
h_yr = 365*24 ; // Time in Hours for a year
total_invest = 200000000 ; // Investment cost of GIL in $ ( for case (j) )

// CALCULATIONS
// For case (a)
Power_loss_OHline = P_l_oh * L ; // Power loss of overhead line at peak load in kW

// For case (b)
Power_loss_GILline = P_l_g * L ; // Power loss of gas-insulated transmission line at peak load in kW

// For case (c)
energy_loss_OH = Power_loss_OHline * h_yr ; // Total annual energy loss of OH line at peak load in kWh/yr

// For case (d)
energy_loss_GIL = Power_loss_GILline * h_yr ; // Total annual energy loss of GIL at peak load in kWh/yr

// For case (e)
energy_ann_OH = lf_ann * energy_loss_OH ; // Average energy loss of OH line at peak load in kWh/yr

// For case (f)
energy_ann_GIL = lf_ann * energy_loss_GIL ; // Average energy loss of GIL line at peak load in kWh/yr

// For case (g)
cost_ann_OH = cost_kwh * energy_ann_OH ; // Average annual cost of losses of OH line in $ per year

// For case (h)
cost_ann_GIL = cost_kwh * energy_ann_GIL ; // Average annual cost of losses of GIL line in $ per year

// For case (i)
P_loss_ann = cost_ann_OH - cost_ann_GIL ; // Annual resultant savings of losses per yr

// For case (j)
break_period = total_invest/P_loss_ann ; // Payback period if GIL alternative period is selected

// DISPLAY RESULTS
disp("EXAMPLE : 5.15 : SOLUTION :-") ;
printf("\n (a) Power loss of Overhead line at peak load , (Power loss)_OH_line = %d kW \n",Power_loss_OHline) ;
printf("\n (b) Power loss of Gas-insulated transmission line , (Power loss)_GIL_line = %d kW \n",Power_loss_GILline) ;
printf("\n (c) Total annual energy loss of Overhead transmission line at peak load = %.4e kWh/yr \n",energy_loss_OH) ;
printf("\n (d) Total annual energy loss of Gas-insulated transmission line at peak load = %.5e kWh/yr \n",energy_loss_GIL);
printf("\n (e) Average energy loss of Overhead transmission line = %.5e kWh/yr \n",energy_ann_OH);
printf("\n (f) Average energy loss of Gas-insulated transmission line at peak load = %.5e kWh/yr \n",energy_ann_GIL);
printf("\n (g) Average annual cost of losses of Overhead transmission line  = $ %.5e/yr \n",cost_ann_OH);
printf("\n (h) Average annual cost of losses of Gas-insulated transmission line = $ %.5e/yr \n",cost_ann_GIL);
printf("\n (i) Annual resultant savings in losses using Gas-insulated transmission line = $ %.6e/yr \n",P_loss_ann);
printf("\n (j) Breakeven period when GIL alternative is selected = %.1f years \n",break_period);
