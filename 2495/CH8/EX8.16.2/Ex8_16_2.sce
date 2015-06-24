clear
clc
Ecell=0.2860;//in V
E_RHE=(-0.1522-(-0.403));//in V
RT_F=0.05915;//
a=10^((-2/(3*RT_F))*(Ecell-E_RHE))
printf('a=%.4f',a)
a1=a^3;//
printf('\na1=%.5f',a1)

//page 474
