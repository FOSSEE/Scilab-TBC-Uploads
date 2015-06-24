//Example 8.3
//Ultimate Tensile Strength
//Page No. 290
clc;clear;close;

deff('y=sigma(e)','y=200000*e^0.33');
E_u=0.33;            //no unit
sigma_u=sigma(E_u);
s_u=sigma_u/exp(E_u);
printf('Ultimate Tensile Strength = %g psi',s_u);
