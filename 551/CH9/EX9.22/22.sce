clc

cv_N2=0.745; //kJ/kg K
cv_CO2=0.653; //kJ/kg K

cp_N2=1.041; //kJ/kg K
cp_CO2=0.842; //kJ/kg K

m_N2=4; //kg
m_CO2=6; //kg
pmix=4; //bar
m=m_N2+m_CO2;

T1=298; //K
T2=323; //K

cv_mix=(m_N2*cv_N2 + m_CO2*cv_CO2)/(m_N2+m_CO2);
disp("cv_mix=")
disp(cv_mix)
disp("kJ/kg K")

cp_mix=(m_N2*cp_N2 + m_CO2*cp_CO2)/(m_N2+m_CO2);
disp("cp_mix=")
disp(cp_mix)
disp("kJ/kg K")

dU=m*cv_mix*(T2-T1);
disp("Change in internal energy=")
disp(dU)
disp("kJ")

dH=m*cp_mix*(T2-T1);
disp("Change in enthalpy=")
disp(dH)
disp("kJ")

dS=m_N2*cv_N2*log(T2/T1) + m_CO2*cv_CO2*log(T2/T1);
disp("Change in entropy=")
disp(dS)
disp("kJ/K")