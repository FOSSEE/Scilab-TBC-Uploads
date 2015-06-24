clear
clc
DelHmA_f=28.87;//enthalpy of fusion of NaCl in KJ/mol
DelHmB_f=24.06;//enthalpy of fusion of Na2SO4 in KJ/mol
R=8.314;//in J/Kmol
TA=1074;//melting point temperature of NaCl
XB=48.2/100;//composition of Na2SO4
XA=(1-XB);//composition of NaCl
TB=1/((1/TA)-(2.303*R*log10(XA)/(DelHmA_f*10^3))+(2.303*R*log10(XB)/(DelHmB_f*10^3)));//melting point of Na2SO4 in K
printf('TB=%.1d K',TB)
T=(1)/((-(2.303*R*log10(XA)/(DelHmA_f*10^3))+(1/TA)));//temperature of the sysytem in K
printf('\nT=%.1f K',T)

//There are some errors in the solution given in textbook
//page 313
