//Ex5_6
clc
Vdc = 15
disp("Vdc = "+string(Vdc)+"V")//applied D.C. voltage
//Half Wave Rectifier
Vm = %pi*Vdc
PIV = Vm
disp("Vm = Vdc*pi = "+string(Vm)+"V")//D.C. voltage for half wave rectifier
disp("PIV = Vm = "+string(PIV)+"V")//peak inverse voltage for half wave rectifier
//Full Wave Rectifier
Vm = %pi*Vdc/2
PIV = 2*Vm
disp("Vm = Vdc*pi/2 = "+string(Vm)+"V")//D.C. voltage for full wave rectifier
disp("PIV = 2*Vm = "+string(PIV)+"V")//peak inverse voltage for full wave rectifier
//Bridge Rectifier
Vm = %pi*Vdc/2
PIV = Vm
disp("Vm = Vdc*pi/2 = "+string(Vm)+"V")//D.C. voltage for bridge rectifier
disp("PIV = Vm = "+string(PIV)+"V")//peak inverse voltage for bridge rectifier
