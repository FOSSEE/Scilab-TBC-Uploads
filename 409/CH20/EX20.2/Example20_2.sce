clear;
clc;
// Example 20.2
printf('Example 20.2\n\n');
//page no. 596
// Solution 

//Given
G = 1000 ;// Volume of solution - [L]
S_ad = 1.56 ;// amount of Steptomycin adsorbed per gram resin-[g strep./g resin]
cn_S = 6 ;// Concentration of streptomycin solution-[g/L]
// Assume equilibrium occurs so that total(max) amount of streptomycin is adsorbed 
max_S = cn_S*G ;// Maximum streptomycin adsorbed-[g]
//Use streptomycin balance to get amount of resin required 
R = max_S/S_ad ;//Amount of resin required to adsorb required amount of streptomycin

printf('Amount of resin required to adsorb required amount of streptomycin is %.0f g .\n ',R);