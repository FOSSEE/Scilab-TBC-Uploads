//Ex5_13
clc
Vdc = 32
Vm = %pi*Vdc/2
Vrms = Vm/(2^.5)
PIV = Vm
disp("Vdc = "+string(Vdc)+"V")//D.C. voltage
disp("Vm = pi*Vdc/2 = "+string(Vm)+"V")//peak voltage
disp("Vrms = Vm/(2^.5) = "+string(Vrms)+"V")//rms voltage
disp("PIV = "+string(PIV)+"V")//peak inverse voltage


// note : value calculated for Vrms in the textbook is wrong.
