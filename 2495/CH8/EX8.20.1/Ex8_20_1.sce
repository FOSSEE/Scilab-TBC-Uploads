clear
clc
RT_F=0.05913;//in V
m_LHC=0.01;//
gamma_LHC=0.383;//
m_RHC=1.0;//
gamma_RHC=0.042;//
Ecell=-(RT_F*log10((m_LHC*gamma_LHC)/(m_RHC*gamma_RHC)));//
printf('Ecell=%.4f V',Ecell)

//page 525
