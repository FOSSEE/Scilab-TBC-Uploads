clc
mo = 9.1*10^-31
disp("mo = "+string(mo)+"kg") //initializing value of mass of electron
m_star=0.067*mo
disp("m_star=0.067*mo = "+string(m_star)+"kg") //initializing value of appropriate mass in the conduction band for GaAs
apsilen = 13.2*8.85*10^-14
disp("apsilen = "+string(apsilen)+"F/cm") //initializing value of relative permitivity for GaAs
apsilen_not = 8.85*10^-14
disp("apsilen_not = "+string(apsilen_not)+"F/cm") //initializing value of permitivity
ml = 0.98*mo
disp("ml* = "+string(ml)+"kg") //initializing value of longitudinal mass
mt = 0.2*mo
disp("mt*= "+string(mt)+"kg")//initializing value of transverse mass
m_sigma_star = (3)/((1/ml)+(2/mt))
disp("The conductivity mass for silicon is ,m_sigma_star = (3*mo)/((1/ml)+(2/mt))= "+string(m_sigma_star)+"Kg")//calculation
disp("The shallow level energies are given by,Ed = Ec-(13.6(eV)*((m_star/mo)/(apsilen/apsilen_not)^2))")
//Let Ec = 0 V and taking positive answer, 
Ed_GaAs = (13.6*((m_star/mo)/(apsilen/apsilen_not)^2))
disp("The donor level energy in GaAs is ,Ed_GaAs = Ed = (13.6*((m_star/mo)/(apsilen/apsilen_not)^2))= "+string(Ed_GaAs)+"eV")//calculation
m_dot_GaAs=0.45*mo
disp("m_dot_GaAs=0.45*mo = "+string(m_dot_GaAs)+"kg") //initializing value of heavy hole mass for GaAs
Ea_GaAs = (13.6*((m_dot_GaAs/mo)/(apsilen/apsilen_not)^2))
disp("The acceptor level energy in GaAs is ,Ea_GaAs = (13.6*((m_dot_GaAs/mo)/(apsilen/apsilen_not)^2))= "+string(Ea_GaAs)+"eV")//calculation
apsilen = 11.9*8.85*10^-14
disp("apsilen = "+string(apsilen)+"F/cm") //initializing value of relative permitivity for GaAs
m_dot_Si=0.5*mo
disp("m_dot_Si=0.45*mo = "+string(m_dot_Si)+"kg") //initializing value of heavy hole mass for GaAs
Ea_Si = (13.6*((m_dot_Si/mo)/(apsilen/apsilen_not)^2))
disp("The acceptor level energy in Si is ,Ea_Si = (13.6*((m_dot_Si/mo)/(apsilen/apsilen_not)^2))= "+string(Ea_Si)+"eV")//calculation
Ed_Si = (13.6*((m_sigma_star/mo)/(apsilen/apsilen_not)^2))
disp("The donor level energy in Si is ,Ed_Si = (13.6*((m_sigma_star/mo)/(apsilen/apsilen_not)^2))= "+string(Ed_Si)+"eV")//calculation
// Note : due to different precisions taken by me and the author ... my answer differ 
