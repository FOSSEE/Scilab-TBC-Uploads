//Exa 2.29
clc;
clear;
close;
format('v',9);

//Given Data : 
p1=10;//bar
p2=2;//bar
V1=0.1;//m^3
V2=0.9;//m^3
R=300;//Nm/Kg-K
m=1;//Kg
//p=a*v+b
//solving for a and b by matrix
A=[V1 1;V2 1];
B=[p1;p2];
X=A^-1*B;
a=X(1);
b=X(2);
//p=a*v+b=a*R*T/p+b
//2*p-b=0;//on differentiating
p=b/2;//bar
//p=a*v+b
v=(p-b)/a;//m^3/Kg
T=p*10^5*v/R;//K
disp(T,"Maximum temperature in K : ");
W=integrate('(a*v+b)*10^5','v',V1,V2);//Nm/Kg
W=W/10^3;//KJ/KgK
disp(W,"Work done in KJ : ");
T1=p1*10^5*V1/R;//K
T2=p2*10^5*V2/R;//K
Gamma=1.4;
Cv=R/(Gamma-1);//Nm/KgK
Cv=Cv/1000;//KJ/KgK
deltaU=m*Cv*(T2-T1);//KJ/Kg
Q=W+deltaU;//KJ
disp(-Q,"Net Heat transfer in KJ ; ");
