clc;
cp_CO=29.27;//kJ/kmol K
cp_H=28.89;//kJ/kmol K
cp_CH4=35.80;//kJ/kmol K
cp_CO2=37.22;//kJ/kmol K
cp_N=29.14;//kJ/kmol K

niCO=0.29;
niH=0.12;
niCH4=0.03;
niCO2=0.04;
niN=0.52;

cp_=cp_CO*niCO+cp_H*niH+cp_CH4*niCH4+cp_CO2*niCO2+cp_N*niN;

R_=8.3145;
cv_=cp_-R_;

m_CO=28;
m_H=2;
m_CH4=16;
m_CO2=44;
m_N=28;

m_=niCO*m_CO+niH*m_H+niCH4*m_CH4+niCO2*m_CO2+niN*m_N;

cp=cp_/m_;
cv=cv_/m_;

disp("the values of cp_,cv_,cp and cv respectively are:");
disp("kJ/kg K",cv,"kJ/kg K",cp,"kJ/kg K",cv_,"kJ/kg K",cp_)
