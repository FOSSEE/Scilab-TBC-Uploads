// Exa 2.17
format('v',7);clc;clear;close;
// Given data
// Values of resistances
R1 = 36;// in ohm
R2 = 75;// in ohm
R_T = (R1*R2)/(R1+R2);// in ohm
// Error in resistance
e1 = 5;// in %
e_1 = e1+e1;// in %      assumed
e2 = ( ((R1/(R1+R2))*e1) + ((R2/(R1+R2))*e1) );// in %
e_T = e_1+e2;//limiting error  in %
// Per_e_T= del_R_T/R_T*100;
del_R_T= e_T*R_T/100;//limiting error in Ω
disp("The limiting error (in percentage) is : ± "+string(e_T)+" %")
disp("The limiting error (in ohm) is : ± "+string(del_R_T)+" Ω")
