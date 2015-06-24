clear
clc
E1=-0.151;//in V
E2=0.799;//in v
E=(E1-E2);//in V
RT_F=0.05913;//in V
Ksp=10^(E/RT_F);//solubility product
printf('Ksp=%.2f*10^-17',Ksp/10^-17)

//page 487
