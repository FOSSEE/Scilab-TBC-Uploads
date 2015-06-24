clear ;
clc;
// Example 28.2
printf('Example 28.2\n\n');
//page no. 872
// Solution 

// Given 
p = 100 ;// Mass of product - [kg]
f_HCl = 25/100 ;//Fraction of HCl in product 
//Product analysis
HCl = f_HCl*p ;// Mass of HCl in product - [kg]
H2O = (1-f_HCl)*p  ;// Mass of H2O in product -[kg]
mw_HCl = 36.37 ;// Molecular weight of HCl -[kg]
mw_H2O = 18.02 ;// Molecular weight of H2O -[kg]
mol_HCl = HCl /mw_HCl ;// Moles of HCl - [kg mol]
mol_H2O = H2O /mw_H2O; // Moles of H2O - [kg mol]
total_mol = mol_HCl + mol_H2O ;// Total no. of moles -[kg mol]
mf_HCl = mol_HCl / total_mol  ;// mole fraction of HCl 
mf_H2O = mol_H2O / total_mol ; // mole fraction of H2O
mr = mol_H2O/mol_HCl ;// Mole ratio of H2O to HCl 
MW = mf_HCl*mw_HCl + mf_H2O*mw_H2O ;// Molecular t. of solution-[kg]
Ref_T = 25 ;//Reference temperature-[degree C]

// Energy balance reduces to Q = del_H 
// Additional data is obtained from Table E.1 , according to book it is a follows -
mol1_HCl = total_mol ;// Moles of HCl // Moles of HCl output -[g mol]
Hf1_HCl = -157753 ;// Heat of formation of HCl output-[J/ g mol HCl ]
Hf_HCl = -92311 ;// Heat of formation of HCl input-[J/ g mol HCl ]
Hf_H2O = 0 ;// Heat of formation of H2O input-[J/ g mol HCl ]
H1_HCl =  556 ;// Change in enthalpy during temperature change from 25 C to 35 C of HCl - [J/g mol] 
H_HCl = integrate('(29.13 - 0.134*.01*T)','T',298,393) ;// Change in enthalpy during temperature change from 25 C to 120 C of HCl - [J/g mol] 

H_H2O = 0 ;// Change in enthalpy during temperature change from 25 C to 25 C of H2O - [J/g mol] 

H_in = (Hf_HCl + H_HCl)*mol_HCl  + (Hf_H2O + H_H2O)*mol_H2O ;// Enthalpy change of input -[J]
H_out = Hf1_HCl*mol_HCl +H1_HCl*mol1_HCl  ;// Enthalpy change of output -[J]

del_H = H_out - H_in ;// Net enthalpy change n process - [J]
Q = del_H; // By energy balance - [J]

printf('The amount of heat removed from the absorber by cooling water is, %.0f J.\n ',Q);