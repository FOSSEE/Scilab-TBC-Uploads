clear all;
clc;
funcprot(0);

//given data
AR = 2.0;//Area ratio
alpha1 = 1.059;
B1 = 0.109;
alpha2 = 1.543;
B2 = 0.364;
cp = 0.577;//coefficient of pressure

//calculations
cp = (alpha1 - (alpha2/(AR^2))) - 0.09;
Diff_eff = cp/(1-(1/(AR^2)));//Diffuser efficiency

//Results
printf('The diffuser efficiency = %.4f.',Diff_eff);
