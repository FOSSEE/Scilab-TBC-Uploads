
//Example 7.4 : true breaking stress and nominal breaking stress 
clc;
clear;
close;
format('v',4)
//given data :
d1=12.7; // in mm
B_load=14;// in K-N
A1=(%pi*d1^2)/4;// original cross section area
d2=7.87; // in mm
A2=(%pi*d2^2)/4;// final cross sction area
T_stress=B_load/A2;
disp(T_stress*1000,"true breaking stress,T_stress(N/mm^2) = ")
N_stress=B_load/A1;
disp(N_stress*1000,"nominal breaking stress,N_stress(N/mm^2) = ")
//true breaking stress unit is wrong in the textbook
