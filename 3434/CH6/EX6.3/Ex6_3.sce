clc
clear
// Given data :

Pout=1*735 // motor power output in W
Peffi=0.85 // motor efficiency
cellarea=9*4*125*125e-6 // area in m^2 
Rad=1000 //incident radiation in kW/m^2
celleffi=0.12 // cell efficiency

// soln.
Pin=Pout/Peffi // power req by motor in W
N=Pin/(Rad*cellarea*celleffi) // number of modules

printf("%.f number of modules are required",N)
