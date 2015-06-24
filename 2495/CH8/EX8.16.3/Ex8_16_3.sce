clear
clc
m=0.01021;//in mol/kg
m1=m*(2*m)^2
Ecell=1.1566;//in V
E_RHE=(0.222-(-0.762));//in V
RT_F=0.05915;//
K=10^((-2/(3*RT_F))*((Ecell-E_RHE)+((RT_F/2)*log10(m1))));//ion activity coefficient
printf('K=%.4f',K)

//There are some errors in the solution given in textbook
//page 474
