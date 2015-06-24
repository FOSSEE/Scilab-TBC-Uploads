// Example 6.7
format('v',5)
clc;
clear;
close;
// given data
R_C= 10*10^3;// in Ω
R_L= 82*10^3;// in Ω
r_E= 1*10^3;// in Ω
r_desh_e_min= 50;// in Ω
r_desh_e_max= 100;// in Ω
r_L= R_C*R_L/(R_C+R_L);// in Ω
// The minimum voltage gain 
A_min= r_L/r_desh_e_max;
// The maximum voltage gain 
A_max= r_L/r_desh_e_min;
disp(A_min,"The minimum voltage gain is : ")
disp(A_max,"The maximum voltage gain is : ")
