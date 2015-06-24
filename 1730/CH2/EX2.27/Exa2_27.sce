//Exa2.27
clc;
clear;
close;
//given data
E_AC=16*10^-6;//in V per degree C
E_BC=-34*10^-6;//in V per degree C
//By law of successive contact (or intermediate metals)
E_AB=E_AC-E_BC;//in V/degree C
E_AB=E_AB*10^6;// in miu V/degree C
disp("EMF of iron with respect to constantan is : "+string(E_AB)+" micro V/degree C")