clear ;
clc;
// Example 18.1
printf('Example 18.1\n\n');
//Page no.539
// Solution 

V = 1 ;// Volume of water vapour-[cubic metre]
rel_h =  43 ;// relative humidity -[%]
vp_H2O = 1.61 ;// vapour pressure of water at 94 F-[in. of Hg]
P_H2O = vp_H2O*(rel_h/100) ;// Pressure of water vapour in air-[in. of Hg]
P =  29.92 ;// [in of Hg]
T = 94+460 ;// Temperature -[Rankine]
Ts =  492 ;//Temperature std. -[Rankine]
mw_H2O = 18 ;// molecular mass of water -[lb]
H2O = (5280^3*Ts*P_H2O*mw_H2O)/(T*P*359) ;//mass of H2O-[lb]
// The dew point is temperature at which water vapour in air first condense ,i.e at realative humidity 100 %, therefore
psat_H2O = P_H2O ;// Saturation pressure of H2O -[in. of Hg]

printf('\nSaturation pressure of H2O %.3f in. of Hg\n',psat_H2O);
printf('Use saturation  pressure of H2O to get dew point temperature T from steam table: T is about 68-69 F.');