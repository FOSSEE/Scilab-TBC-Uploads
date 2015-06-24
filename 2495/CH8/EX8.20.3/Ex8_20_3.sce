clear
clc
RT_F=0.05913;//in V
m_LHC=0.01;//
gamma_LHC=0.708;//
m_RHC=0.10;//
gamma_RHC=0.502;//
Ecell=((-3/2)*(RT_F*log10((m_LHC*gamma_LHC)/(m_RHC*gamma_RHC))));//
printf('Ecell=%.4f V',Ecell)

//page 527
