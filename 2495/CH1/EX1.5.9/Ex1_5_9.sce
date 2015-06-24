clear
clc
K1=5.36;//
K2=4.95;//
T1=-2875;//in K
T2=-2740;//in K
R=8.314;//in J/Kmol
T=(T2-T1)/(K1-K2);//triple point temperature in K
printf('T=%.1f K',T)
P=(10^((T1/T)+K1));//triple point pressure in atm
printf('\nP=%.7f K atm',P)
DelHm_s=2.303*R*(-T1);//molar enthalpy of sublimation in J/mol
DelHm_v=2.303*R*(-T2);//molar enthalpy of vapourization in J/mol
DelHm_f=DelHm_s-DelHm_v;//molar enthalpy of fusion in J/mol
printf('\nDelHm_f=%.1d J/mol',DelHm_f)
DelSm_f=DelHm_f/T;//molar entropy of fusion  in J/Kmol
printf('\nDelSm_f=%.2f J/Kmol',DelSm_f)

//There are some errors in the solution given in textbook
//page 20
