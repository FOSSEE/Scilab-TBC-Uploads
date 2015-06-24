//Ex8_8
clc
Ro=0.001
disp("Ro= "+string(Ro)+ " ohm")  //Output resistance
Sv=0.01
disp("Sv= "+string(Sv)+"%") // Input Regulation for IC regulator
delta_VI=12-9
disp("change in regulator voltage= "+string(delta_VI)+" volts") // Regulator input voltage variation
delta_IL=1.25-1
disp("change in regulator Current= "+string(delta_IL)+" A") // Regulator Current variation
delta_Vo=[delta_VI*(Sv/100)+delta_IL*Ro]
disp("change in regulator output voltage= "+string(delta_Vo)+" volts") // Regulator output voltage variation

