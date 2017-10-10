//Example 3.2
clear;
clc;

//Given 
delH1 = -393.5//H1 is the heat of reaction in the formation of CARBON DIOXIDE in kJ (i)
delH2 = -110.5//H2 is the heat of reaction in the formation of CARBON MONOXIDE in kJ (ii)
delH3 = -890.35//H3 is the heat of reaction in the combustion of METHANE in kJ (iii)
delH4 = -85.3//H4 is the heat of reaction in the formation of SILVER CHLORIDE in kJ (iv)
R = 0.008314;//R is gas constant in kJ K^-1 mol^-1
T = 298;//T is temperature in K
 
//To determine the heat of formation
delv1= 1-(1);//change in moles in reaction (i)
delE1 = delH1 - (delv1*R*T);//E1 is the internal energy (i) in kJ (1st law of thermodynamics)
mprintf('(i) change in internal energy = %f kJ',delE1);
delv2=1-(0.5);//change in moles in reaction (ii)
delE2 = delH2 - (delv2*R*T);//E2 is the internal energy (ii) in kJ (1st law of thermodynamics)
mprintf('\n (ii) change in internal energy = %f kJ',delE2);
delv3=1-(1+2);//change in moles in reaction (iii)
delE3 = delH3 - (delv3*R*T);//E3 is the internal energy (iii) in kJ (1st law of thermodynamics)
mprintf('\n (iii) change in internal energy = %f kJ',delE3);
delv4=0-(1);//change in moles in reaction (iv)
delE4 = delH4 - (delv4*R*T);//E4 is the internal energy (iv) in kJ (1st law of thermodynamics)
mprintf('\n (iv) change in internal energy = %f kJ',delE4);
//end