//Exa 2.28
clc;
clear;
close;
format('v',5);

//Given Data : 
V1=200/1000;//m^3
p1=4;//bar
T1=400;//K
p2=1;//bar
H3subH2=72;//KJ
Cp=1;//KJ/KgK
Cv=0.714;//KJ/KgK

Gamma=Cp/Cv;
R=Cp-Cv;//KJ/KgK
//p*V=m*R*T
m=p1*10^5*V1/R/1000/T1;//Kg
T2=T1*(p2/p1)^((Gamma-1)/Gamma);//K
V2=p1*V1/T1*T2/p2;//m^3
W1_2=m*R*(T1-T2)/(Gamma-1);//KJ
disp(W1_2,"Work done W1-2 in KJ : ");
//H3subH2=m*Cp(T3-T2);
T3=(H3subH2+m*Cp*T2)/m/Cp;//K
W2_3=m*R*(T3-T2);//KJ
W=W1_2+W2_3;//KJ
disp(W,"Workdone in KJ : ");
//W=m*R*(T1-T3)/(n-1)
n=m*R*(T1-T3)/W+1;//
disp(n,"Index of expansion : ");
