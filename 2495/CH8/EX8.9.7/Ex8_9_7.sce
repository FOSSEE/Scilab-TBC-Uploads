clear
clc
E_RHE=(0.5335-(-2.363));//reduction reaction at RHE in V
RT_F=0.05915;//
E_LHE=((RT_F/2)*log10(0.1*0.2^2));//reduction reaction at LHE in V
Ecell=E_RHE-E_LHE;//cell reaction in V
printf('Ecell=%.4f V',Ecell)
E_RHE=(0.0-0.0713);//reduction reaction at RHE in V
RT_F=0.05915;//
E_LHE=((RT_F)*log10((0.5^(1/2))/(0.02*0.02)));//reduction reaction at LHE in V
Ecell=E_RHE-E_LHE;//cell reaction in V
printf('\nEcell=%.4f V',Ecell)
E_RHE=(0.337-(-0.441));//reduction reaction at RHE in V
RT_F=0.05915;//
E_LHE=((RT_F/2)*log10(0.05/0.01));//reduction reaction at LHE in V
Ecell=E_RHE-E_LHE;//cell reaction in V
printf('\nEcell=%.4f V',Ecell)
E_RHE=(0.0-0.0);//reduction reaction at RHE in V
RT_F=0.05915;//
E_LHE=((RT_F/2)*log10(6.43/0.127));//reduction reaction at LHE in V
Ecell=E_RHE-E_LHE;//cell reaction in V
printf('\nEcell=%.4f V',Ecell)
E_RHE=(-0.763-0.337);//reduction reaction at RHE in V
RT_F=0.05915;//
E_LHE=((RT_F/2)*log10((0.1^2)*0.732));//reduction reaction at LHE in V
Ecell=E_RHE+E_LHE;//cell reaction in V
printf('\nEcell=%.3f V',Ecell)

//There are some errors in the solution given in textbook
//page 455

