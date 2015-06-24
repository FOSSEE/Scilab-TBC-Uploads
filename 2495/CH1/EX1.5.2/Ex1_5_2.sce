clear;
clc;
T1=373.15;//in K
P=1;//atm
Vv=1674;//in cm^3/gm
delPdelT=27.12;//in torr/K
R1=8.314;//in J
R2=0.082;//in atm/(dm)^3
delH=((delPdelT)/760)*T1*((Vv*10^-3)*18)*(R1/R2)
printf('delH =%d J/mol',delH)

////Example in page 15
