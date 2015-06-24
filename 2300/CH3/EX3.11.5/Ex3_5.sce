
//scilab 5.4.1
//windows 7 operating system
//chapter 3:Properties of Semiconductors
clc
clear
//given
z=(100/60);//z=conductiarrier concentration in /(m^3)
ni=2.5*10^(19);//ni=intrinsic conductivity of intrinsic material in S/m
//(P/N)=(1/2);//(P/N)=ratio of hole mobility(P) to electron mobility(N)
e=1.6*(10^-19);//e=charge of electron in Coulomb
N=(z/(e*ni*(1+(1/2))))
disp("(m^2)/(V.s)",N,"N=")
P=(N/2)
disp("(m^2)/(V.s)",P,"P=")
//Nd+p=Na+n;n=electron concentration;p=hole concentration
//np=(ni^2)
Nd=(10^20)//Nd=donor concentration in /(m^3)
Na=5*(10^19)//Na=acceptor concentration in /(m^3)
n=(1/2)*((Nd-Na)+sqrt(((Nd-Na)^2)+(4*(ni^2))))
disp("/(m^3)",n,"n=")
p=(ni^2)/n
disp("/(m^3)",p,"p=")
Z=e*((n*N)+(p*P))//Z=conductivity of doped sample in S/m
disp("S/m",Z,"Z=")
F=200//F=applied electric field in V/cm
J=Z*F//J=total conduction current density in A/(m^2)
disp("A/(m^2)",J,"J=")




