clear;
clc;
T1=313.75;//in K
P1=59.1;//in torr
T2=353.15;//in K
P2=298.7;//in torr
R=2.303*8.314;//in J/(K*mol)
delH=R*log10(P2/P1)*((T2*T1)/(T2-T1))
printf('delH=%d J/mol',delH)
