//Example 14.11 // no. of defects
clc;
clear;
//given data :
k=8.625D-5;// Boltzmann constant eV/k
E=1.4;// energy to create defect in eV
T1=293;// temperature in kelvin
T2=573;// temperature in kelvin
ratio=exp((-E/k)*(1/(2*T1)-1/(2*T2)));// ratio of no. of defects at T1 & T2
format('e',10);ratio;
disp(ratio, "ratio of number of Frenkel defect")
ratio=1/ratio;//
disp(ratio,"it can be written as")
