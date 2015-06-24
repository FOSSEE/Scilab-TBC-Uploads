clc
g=32.2;//ft/s^2
rho_water=62.3;//lbm/ft^3
//specific weoight=(density)*(acceleration due to gravity)
specific_wt=rho_water*g;//lbm.ft/ft^3.s^2
//1 lbf=32.2 lbm.ft/s^2
specific_wt=specific_wt/32.2;//lbf/ft^3
disp("Specific weight of water is")
disp(specific_wt)
disp("lbf/ft^3")