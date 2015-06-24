clear
clc
T1=325.15;//in K
T2=338.15;//in K
P2=760;//in torr
DelHm_v=10.5;//
P1=P2/(10^((DelHm_v/2.303)*((T2/T1)-1)));//in torr
printf('P1=%.1f torr',P1)
P=200;//in torr
T=T2/(1+((2.303/10.5)*log10(P2/P)));//in K
printf('\nT=%.1d K',T)
I=log10(P2)-(((DelHm_v*T2)/2.303)*(-1/T2));//
printf('\nI=%.3f',I)

//There are some errors in the solution given in textbook
//page 16
