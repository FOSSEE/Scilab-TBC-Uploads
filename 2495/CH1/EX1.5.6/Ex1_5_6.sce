clear;
clc;
T1=373.15;//in K
P1=76.0;//in cmHg
P2=77.0;//in cmHg
DelHm_v=2255;//in J/gm
Vm_v=1664;//in cm^3/mol
Vm_l=1;//in cm^3/mol
R=8.314;//in J/Kmol
T2=(1/((1/T1)-((2.303*R/(DelHm_v*18))*log10(P2/P1))))
printf('T2=%.1f K',T2)

//There are some errors in the solution given in textbook
//page 18
