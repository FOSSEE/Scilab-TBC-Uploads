//Chapter 3_Semoconductor Devices Fundamentals
//Caption: Hole Concentration
//Example3.4: A semiconductor is doped with a concentration of 10^17 atoms/cm^3 of rsenic . What is the equilibrium hole concentration p at 300K. Given ni=1.5*10^10 cm^-3
// Solution:
clear;
clc;
function p=holeconcentration(ni,Nd)//ni=intrinsiic concentration=1.5*10^10 cm^-3, Nd: donar concentration; since, Nd>>ni, so Nd=n=10^17 atoms/cm^3.
    p=ni^2/Nd
    disp('hole concentrartion at 300K is:')
    disp('per cubic cm',p)
endfunction
//holeconcentration(1.5*10^10,10^17);