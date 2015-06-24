//Exa2.28
clc;
clear;
close;
//given data
E_AC=7.4;//in miu V per degree C
E_BC=-34.4;//in miu V per degree C
//By law of successive contact (or intermediate metals)
E_AB=E_AC-E_BC;//in miu V/degree C
E_AB=E_AB*10^-6;// in  V/degree C
// Let Thermo-emf for a temperature difference of 250 degree C = EMF_250
EMF_250=E_AB*250;// in V
EMF_250=EMF_250*10^3;//in mV
disp("Termo-emf for a temperature difference of 250 degree C is "+string(EMF_250)+" mV");
