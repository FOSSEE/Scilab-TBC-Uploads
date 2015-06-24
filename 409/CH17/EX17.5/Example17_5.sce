clear;
clc;
// Example 17.5
printf('Example 17.5\n');
//Page no. 527
// Solution Fig E17.5

P =  100 ;// Pressure of air-[kPa]
T =  20 + 273 ;// Temperature of air-[K]
R = 8.314 ;// [(kPa*m^3)/(k mol*K)] 
EOH =  6 ;// Amount of ethyl alcohol to evaporate-[kg]
mw_EOH = 46.07 ;// Mol.wt. of 1 k mol ethyl alcohol-[kg]
// Additional data needed
vp_EOH = 5.93 ;// Partial pressure of alcohol at 20 C-[kPa]
vp_air = P-vp_EOH ;// Partial pressure of air at 20 C-[kPa]
n_EOH  = EOH/mw_EOH ;//Moles of ethyl alcohol -[kg mol]
n_air = (n_EOH*vp_air)/vp_EOH ;// Moles of air -[kg mol]
V_air = n_air*R*T/P ;// Volume of air required

printf('\n Volume of air required to evaporate 6 kg of ethyl alcohol is %.1f cubic metre . \n',V_air);