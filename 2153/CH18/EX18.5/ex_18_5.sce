//Example 18.4 : los of energy
clc;
clear;
close;
//given data :
mass=10;// in kg
energy_loss=250;// in J/m^2
//energy loss at the rate of 50 cycles/s
E=energy_loss*50;// in J/m^3
E_loss=E*3600;//in J/m^3
D=7500;//density in kg/m^3
Volume=mass/D;
energy_loss_per_hour=E_loss/Volume;
disp(energy_loss_per_hour,"energy_loss_per_hour(J/hour) = ")

