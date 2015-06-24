// Exa 2.16
format('v',7);clc;clear;close;
// Given data
// Values of resistance
R1 = 200;// in ohm
R2 = 100;// in  ohm
R3 = 50;// in ohm
R_T = R1+R2+R3;//resultant resistance in ohm
// Error in resistance
e1 = 5;// in %
e2 = e1;// in %
e3 = e1;// in %
a1 = R1;// in ohm
a2 = R2;// in ohm
a3 = R3;// in ohm
Per_e_T = ( ((R1/R_T)*e1) + ((R2/R_T)*e2) + ((R3/R_T)*e3) );// in %
// Per_e_T= del_R_T/R_T*100;
del_R_T= Per_e_T*R_T/100;// in Ω
disp(R_T,"The magnitude of the resultant resistance in Ω is : ")
disp("The limiting error (in percentage) is : ± "+string(Per_e_T)+" %")
disp("The limiting error (in ohm) is : ± "+string(del_R_T)+" Ω")
