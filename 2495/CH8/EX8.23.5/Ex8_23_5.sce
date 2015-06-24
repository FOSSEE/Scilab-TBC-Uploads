clear
clc
RT_F=0.05913;//in V
Ecell=0.1185//in V
K1=0.379*10^-3//
K2=37.9*10^-3//
m=-(RT_F/Ecell)*log10(K1/K2);//
printf('m=%.1f',m)
K3=0.1;//
K4=1;//
Ecell_1=0.1263;//in V
n=(-(Ecell_1*m)/RT_F)/log10(K3/K4);//
printf('\nn=%.1d',n)

//page 545

