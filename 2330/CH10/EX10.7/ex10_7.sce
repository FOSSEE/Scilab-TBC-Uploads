// Example 10.7
format('v',6)
clc;
clear;
close;
// given data
R_C= 1*10^3;// in Ω
r_desh_e= 2.5;//in Ω
Zin= 1*10^3;// in Ω
A2= 10;// unit less
A3= 1;// unit less
A1= (R_C*Zin/(R_C+Zin))/r_desh_e;// unit less
// The overall voltage gain 
A= A1*A2*A3;
disp(A,"The overall voltage gain is : ")
