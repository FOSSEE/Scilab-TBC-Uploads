// exa 7.4 Pg 204
clc;clear;close;

// Given Data
d=75;// mm
tau=50;// MPa
sigma_c=75;// MPa
printf('for key to be equally strong in shear & crushing - \n')
b=d/4;// mm
printf(' b= %.2f mm. Use b=20 mm.',b)
b=20;//mm
//2*b/t=sigma_c/tau for key to be equally strong in shear & crushing
t=2*b/(sigma_c/tau);// mm
printf('\n t=%.2f mm. Use t=27 mm',t)
l= %pi*d**2/8/b;// mm (for key to be equally strong in shear as shaft)
printf('for key to be equally strong in shear as shaft - \n')
printf(' l=%.1f mm. Use l=115 mm',l)
