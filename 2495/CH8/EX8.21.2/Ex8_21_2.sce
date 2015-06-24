clear
clc
RT_F=0.05913;//in V
m_LHC=0.02;//
gamma_LHC=0.320;//
m_RHC=0.2;//
gamma_RHC=0.110;//
E1=0.370;//in V
Ecell_1=(-E1)*(RT_F*log10((m_LHC*gamma_LHC)/(m_RHC*gamma_RHC)));//in V
printf('Ecell_1=%.4f V',Ecell_1)
Ecell_2=(Ecell_1)/(2*E1);//in V
printf('\nEcell_2=%.5f V',Ecell_2)

//page 536
