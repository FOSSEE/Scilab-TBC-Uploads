clear;
clc;
T1=373.15;//in K
P1=76.0;//in cmHg
T2=363.15//in K
DelHm_v=2268;//in J/gm
R=8.314;//in J/Kmol
P2=P1*(10^((DelHm_v*18/(2.303*R))*(1/T1-1/T2)))
printf('P2=%.1f cmHg',P2)

//page 19

