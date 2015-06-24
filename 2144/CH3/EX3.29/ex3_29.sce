// Exa 3.29
clc;
clear;
close;
/// Given data
U=180;// energy received by system in kJ
RH= 200;// rejected heat by system in kJ
RcHeat= 50;// received heat by system in kJ
W= U-RH+RcHeat;// in kJ
U1 = 0;// in kJ
U2= U+U1;// in kJ
U3 = RcHeat-RH+U2;// in kJ
disp(U3,"Internal energy in kJ is");
