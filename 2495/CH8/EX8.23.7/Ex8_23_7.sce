clear
clc
Ecell=-0.188;//in V
RT_F=0.05913;//in V
H=10^(Ecell/RT_F);//in mol/dm^3
M=1/32;//
alpha=(H/M);//degree of freedom 
printf('alpha=%.3f*10^-2',alpha/10^-2)
Kh=(M*alpha^2)/(1-alpha);//
printf('\nKh=%.2f*10^-5 mol/dm^3',Kh/10^-5)

//page 547
