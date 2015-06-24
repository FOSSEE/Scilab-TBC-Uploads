// Exa 10.6
clc;
clear;
close;
format('v',6)
// Given data
A = 1000;
Af = A - (0.40*1000);
//Af = A/( 1+(A*Beta) );
Beta = ((A/Af)-1)/A;
A_desh = 800;
A_desh_f= A_desh/( 1+(A_desh*Beta) );
disp(A_desh_f,"The voltage gain with feedback is");
// percentage reduction without feedback 
P = ((A-A_desh)/A)*100;//in %
// percentage reduction with feedback 
P1 = ((Af-A_desh_f)/Af)*100;// in %
disp(P1,"The percentage reduction with feedback in % is");
