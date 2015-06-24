
//scilab 5.4.1
//windows 7 operating system
//chapter 3:Properties of Semiconductors
clc
clear
//given
ni=2.5*10^(19);//ni=intrinsic conductivity of intrinsic material in S/m
Nd=5*(10^19)//Nd=donor concentration in /(m^3)
n=(1/2)*(Nd+sqrt((Nd^2)+(4*(ni^2))))//n=electron concentration
disp("/(m^3)",n,"n=")
p=(ni^2)/n//p=hole concentration
disp("/(m^3)",p,"p=")
N=0.38//N=electron mobility in (m^2)/(V.s)
P=0.18//P=hole mobility in (m^2)/(V.s)
e=1.6*(10^-19)//e=electronic charge in Coulomb
Z=e*((n*N)+(p*P))//Z=conductivity of doped sample in S/m
disp("S/m",Z,"Z=")
