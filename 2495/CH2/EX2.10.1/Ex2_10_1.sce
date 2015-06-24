clear
clc
P=2.47;//osmotic pressure in atm
DelHm_v=539*18;//in cal/mol
R=0.082;//in litreatm
Vm=18.1;//molar volume of water
T=303;//in K
Tb=373;//boiling point temperature in K
DelTb=(P*Vm*10^-3*(Tb^2))/(DelHm_v*(R/1.987)*T)
printf('DelTb=%.4f K',DelTb)

//The above calculations are done in CGS units

//To convert them into SI units the following changes are done
R=8.314;//in J/Kmol
P=2.47*101325;//in N/m^2
Vm=18.1*10^-6;//in m^3/mol

//Both answers come out be same
//page 70
