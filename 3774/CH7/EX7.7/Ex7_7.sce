// exa 7.7 Pg 208
clc;clear;close;

// Given Data
d=50;// mm
tau=42;// MPa
sigma_c=72;// MPa
printf('for key to be equally strong in shear & crushing - \n')
b=d/4;// mm
printf(' b= %.2f mm. Use b=15 mm.',b)
b=15;//mm
//2*b/t=sigma_c/tau for key to be equally strong in shear & crushing
t=2*b/(sigma_c/tau);// mm
printf('\n t=%.2f mm. Use t=20 mm',t)
l= %pi*d**2/8/b;// mm (for key to be equally strong in shear as shaft)
printf('\n for key to be equally strong in shear as shaft - \n')
printf(' l=%.2f mm. Use l=70 mm',l)
