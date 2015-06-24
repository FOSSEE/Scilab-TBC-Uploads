// Example 2.15
clc;
clear;
close;
// Given data
Int_energy_changes= 20;// in kJ/kg
Q= 0;// in kJ
W= -90;// in kJ
E= Q-W;// change in internal energy in kJ/kg
m= E/Int_energy_changes;// in kg
disp(m,"The mass of the fluid in the system in kg is : ")
