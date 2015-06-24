clear ;
clc;
// Example 17.2
printf('Example 17.2\n');
//Page no. 517
// Solution Fig E17.2b

gas =  1 ;// Entering gas-[g mol]
T = 26 ;// Temperature (for isothermal process)-[degree C]
// From fig. its clear that at 26 C saturation pressure is at point A
// Get vapour pressure of benzene from Perry handbook or CD,it is
vp =  99.7 ;// vapour pressure of benzene at 26 C-[mm of Hg]

// Analysis of entering gas 
f_C6H6 = 0.018 ;// Mol fraction of benzene
f_air  =  0.982 ;// Mol fraction of air
mol_C6H6 = 0.018*gas ;// Moles  of benzene-[g mol]
mol_air  =  0.982*gas ;// Moles  of air-[g mol]

// Analysis of exit gas
C6H6_rec =  95/100 ;// Fraction of benzene recovered
C6H6_out  = 1-C6H6_rec ;//Fraction of benzene in exit stream
C6H6_out = mol_C6H6*C6H6_out ;//Moles of benzene in exit stream-[g mol]
air_out = mol_air ;//Moles of air in exit stream-[g mol]
total_mol = C6H6_out+air_out ;// Total moles in exit stream
y_C6H6_out = C6H6_out/total_mol ;// Mole fraction of benzene in exit
P = vp/y_C6H6_out ;// Pressure total of exit

printf('\n Pressure total at exit of compressor %.2e mm of Hg.',P);