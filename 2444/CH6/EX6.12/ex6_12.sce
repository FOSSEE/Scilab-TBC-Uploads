// Exa 6.12
clc;
clear;
close;
format('v',6)
// Given data
R_C = 2.5;// in k ohm
R_C = R_C * 10^3;// in ohm
R_E = 1;// in k ohm
R_E = R_E * 10^3;// in ohm
h_ie = 1.1;// in k ohm
h_ie = h_ie * 10^3;// in ohm
h_fe = 200;// unit less
Beta = 200;// unit less
A = round((-h_fe/h_ie)*R_C);// unit less
disp(A,"The voltage gain without feed back is");
Af = -R_C/R_E;// unit less
disp(Af,"The voltage gain with feed back is");
// Af = A/(1+(A*Beta));
Beta = (abs(A)-abs(Af))/(A*Af);// unit less
disp(Beta,"The feed back ratio is");
feedbackfactor = round(abs(A)*Beta);// unit less
disp(feedbackfactor,"The feed back factor is");
