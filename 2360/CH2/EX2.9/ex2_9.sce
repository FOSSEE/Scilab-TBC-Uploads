// Exa 2.9
format('v',5);clc;clear;close;
// Given data
R1= 15;//value of resistance in Ω
Re1= R1*5/100;//error in resistance in Ω
R2= 33;//value of resistance in Ω
Re2= R2*2/100;//error in resistance in Ω
R3= 75;//value of resistance in Ω
Re3= R3*5/100;//error in resistance in Ω
R_T= R1+R2+R3;//resultant resistance in Ω
R_T_e= Re1+Re2+Re3;//limiting error in resistance in Ω
disp("The resultant is "+string(R_T)+" Ω with the limiting error of "+string(R_T_e)+" Ω")
e_T= R_T_e/R_T*100;// in %
disp("The percentage relative limiting error in resultant is ± "+string(e_T)+" %")
