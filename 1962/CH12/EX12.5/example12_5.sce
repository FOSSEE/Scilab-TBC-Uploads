
//example 12.5
//page 457
clc; funcprot(0);
//initialisation of variable
H=60;
sigma_critical=0.08;
Pa=98000;//pressure
Pv=1707;//pressure of vapour
Gamma=9810;
HL=1;
NPSH_min=H*sigma_critical;
Hs_max=Pa/Gamma-Pv/Gamma-NPSH_min-HL;
disp(Hs_max,"maximum value of suction lift (m)");
clear
