clear ;
clc;
// Example 18.2
printf('Example 18.2\n\n');
//Page no. 541
// Solution 

// Data from steam table
psat_H2O = 31.8 ;// Saturation pressure -[mm of Hg]

//(c)
H =  .0055 ;// Humidity
mw_H2O =  18 ;// Molecular wt.  of water-[lb]
mw_air =  29 ;// Molecular wt. of air -[lb]
P = 750 ;// Pressure total -[mm of Hg]
p_H2O = ((H*mw_air*P)/mw_H2O)/(1+(H*mw_air/mw_H2O)) ;// Partial pressure of water vapour in air-[mm of Hg]

//(a)
rel_H = (p_H2O/psat_H2O)*100  ;// relative humidity -[%]

//(b)
mol_H = (p_H2O)/(P-p_H2O) ;// Molal humidity

printf('\n(a)Relative humidity is %.0f%% .\n',rel_H);
printf('\n(b)Molal humidity is %.1e \n',mol_H);
printf('\n(c)Partial pressure of water vapour in air is %.1f  mm of Hg.\n',p_H2O);