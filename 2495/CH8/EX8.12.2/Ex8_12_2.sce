clear
clc
T=298;//temperature in K
R=8.314;//J/K
F=96500;//in C
Kw=(10^-14);//
E=((2.303*R*T)/F)*log10(Kw);//reduction potential in V
printf('E=%.3f V',E)

//page 464
