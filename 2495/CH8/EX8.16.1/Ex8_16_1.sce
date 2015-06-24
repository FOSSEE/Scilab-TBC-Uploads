clear
clc
E_RHE=(0.1385);//reduction reaction at RHE in V
RT_F=0.05915;//
E_LHE=((RT_F*2)*log10(0.2));//reduction reaction at LHE in V
Ecell=E_RHE-E_LHE;//cell reaction in V
printf('Ecell=%.4f V',Ecell)

//page 473
