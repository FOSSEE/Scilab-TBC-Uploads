clear ;
clc;
// Example 10.3
printf('Example 10.3\n\n');
// Page no. 270
// Solution

F = 1 ;//CH3OH -[gmol]
// Extent of reactions can be calculated by using eqn. 10.5
// For reaction 1 based on CH3OH is limiting reagent
f_cn = 90 ;//[%]
vi_CH3OH = -1 ;//coefficint of CH3OH
ex_r1 = (-90/100)/vi_CH3OH ;//  Extent of reaction based on CH3OH 
printf(' Extent of reaction 1 is %.2f g moles reacting \n',ex_r1);
//For reaction 2
yld = 75 ;//[%]
ex_r2 = ex_r1-(F*(yld/100));
printf('  Extent of reaction 2 is %.2f g moles reacting \n',ex_r2);

// For amount of air 
// Entering O2 is twice the O2 required by reaction 1,therefore
f_O2 = 0.21 ;// mol. fraction of O2
f_N2 = 0.79 ;// mol. fraction of N2
n_O2 = 2*((1/2)*F) ;// entering oxygen -[g mol]
air =  n_O2/f_O2 ;// Amount of air entering
n_N2 = air-n_O2  ;// entering nitrogen -[g mol]

// Degree of freedom analysis
n_un = 11 ;// Number of unknowns in the given problem
n_ie  = 11 ;// Number of independent equations
d_o_f =  n_un-n_ie ;// Number of degree of freedom
printf('  Number of degree of freedom for the given system is  %i \n',d_o_f);

// Reaction 1
v1_CH3OH = -1 ;//coefficint of CH3OH
v1_O2 = -1/2 ;//coefficint of O2
v1_CH2O = 1 ;//coefficint of CH2O
v1_H2O = 1 ;//coefficint of H2O
v1_CO = 0  ;//coefficient of CO
//Reaction 2
v2_O2 = -1/2 ;//coefficint of O2
v2_CH2O = -1 ;//coefficint of CH2O
v2_H2O = 1 ;//coefficint of H2O
v2_CO = 1 ;//coefficient of CO
P = F+air +(v1_CH3OH+v1_O2+v1_CH2O+v1_H2O)*ex_r1 +(v2_O2+v2_CH2O+v2_H2O+v2_CO)*ex_r2 ;// Product -[g mol]

no_CH3OH = F+(v1_CH3OH*ex_r1)+0 ;// [g mol]
no_O2 = n_O2+(v1_O2*ex_r1)+v2_O2*ex_r2 ;// [g mol]
no_CH2O = 0 + v1_CH2O*ex_r1 +v2_CH2O*ex_r2 ;//[g mol]
no_CO =  0+v1_CO*ex_r1 +v2_CO*ex_r2 ;//[g mol]
no_H2O = 0+v1_H2O*ex_r1+v2_H2O*ex_r2 ;// [g mol]
no_N2 =  n_N2-0-0 ;// [g mol]

// Composition of product
y_CH3OH = (no_CH3OH/P )*100 ;// mole %
y_O2 = (no_O2/P)*100 ;// mole %
y_CH2O = (no_CH2O/P)*100 ;// mole %
y_CO = (no_CO/P)*100 ;// mole %
y_H2O = (no_H2O/P)*100 ;// mole % 
y_N2 = (no_N2/P )*100;// mole %

printf('\nComposition of product\n');
printf('Component        mole percent\n');
printf(' CH3OH           %.1f %%\n',y_CH3OH);
printf(' O2              %.1f %%\n',y_O2);
printf(' CH2O            %.1f %%\n',y_CH2O);
printf(' CO              %.1f %%\n',y_CO);
printf(' H2O             %.1f %%\n',y_H2O);
printf(' N2              %.1f %%\n',y_N2);