clear
clc
n1=270;//amount of sugar in gm
N1=358;//molar mass of sugar in gm/mol
n2=1;//amount of water in kg
N2=18;//molar mass of water in gm/mol
M1=n1/N1;//amount of sugar in mol
M2=(n2*1000)/N2;//amount of water in mol
Mt=M1+M2;//total amount in mol
Xs=M1/Mt;//mole fraction of sugar
Xw=M2/Mt;//mole fraction of water
R=8.314;//in J/Kmol
T=298;//in K
DelG_m=(Xs*R*T*log(Xs))+(Xw*R*T*log(Xw))
printf('DelG_m=%.3f J/mol',DelG_m)
DelGm=Mt*DelG_m;//
printf('\nDelGm=%.2f J',DelGm)
DelS_m=-(DelG_m/T);//
printf('\nDelS_m=%.3f J/Kmol',DelS_m)
DelSm=-(DelGm/T);//
printf('\nDelSm=%.3f J/Kmol',DelSm)

//There are some errors in the solution given in textbook
//page 154

//there are some minor errors in solutions in textbook
