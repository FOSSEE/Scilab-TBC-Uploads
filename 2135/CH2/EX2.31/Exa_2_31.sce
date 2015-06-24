//Exa 2.31
clc;
clear;
close;
format('v',8);

//Given Data : 
p1=1;//bar
T1=20+273;//K
p2=6;//bar
m=1;//Kg
R=287;//Nm/Kg
Gamma=1.4;
Cp=1.005;//KJ/KgK
Cv=0.7175;//KJ/KgK
//T2=T1 : Isothermal compression
T2subT1=0;
deltaU=m*Cv*(T2subT1);//KJ
disp("Isothermal :");
disp(deltaU,"Change in internal energy in KJ : ");
Wsf=m*R/1000*T1*log(p1/p2);//KJ/Kg
disp(Wsf,"Work done in KJ/Kg : ");
p2V2subp1V1=0;//isothermal process
Q=Wsf+deltaU+p2V2subp1V1;//KJ/Kg
disp(Q,"Heat transfer in KJ/Kg : ");
disp("Isentropic :");
T2=T1*(p2/p1)^((Gamma-1)/Gamma);//K
U2subU1=m*Cv*(T2-T1);//KJ/Kg
disp(U2subU1,"Change in internal energy in KJ/Kg : ");
H2subH1=m*Cp*(T2-T1);//KJ/Kg
disp(H2subH1,"Change in heat in KJ/Kg : ");
Q=0;//adiabatic process
disp(Q,"Heat transfer in KJ/Kg : ");
Wsf=Q-H2subH1;//KJ/Kg
disp(Wsf,"Work done in KJ/Kg : ");
disp("Polytropic : ");
n=1.25;//index
T2=T1*(p2/p1)^((n-1)/n);//K
deltaU=m*Cv*(T2-T1);//KJ/Kg
disp(deltaU,"Change in internal energy in KJ/Kg : ");
H2subH1=m*Cp*(T2-T1);//KJ/Kg
Wsf=(n/(n-1))*m*R/1000*(T1-T2);//KJ/Kg
disp(Wsf,"Work done in KJ/Kg : ");
Q=Wsf+H2subH1;//KJ/Kg
disp(Q,"Heat transfer in KJ/Kg : ");
//Answer of chane in internal energy for last part is wrong in the book.
