//Exa 4.17
clc;
clear;
close;
format('v',7);

//Given Data :
m=1;//Kg
p1=1;//bar
T1=290;//K
p2=30;//bar
T2=290;//K
n=1.3;//constant
R=300;//Nm/KgK
Cv=0.72;//KJ/KgK
disp("part (a) Isothermally")
V1=R*T1/p1/10^5;//m^3/Kg
V2=p1*V1/p2;//m^3/Kg
w=p1*10^5*V1*log(V2/V1)/1000;//KJ/Kg
disp(w,"Workdone in KJ/Kg : ");
deltaU=m*Cv*(T2-T1);//KJ(as T1=T2)
disp(deltaU,"Change in internal energy in KJ : ");
q=w+deltaU;//KJ/Kg
disp(q,"Heat transfer in KJ/Kg : ");
S2subS1=m*R/1000*log(V2/V1)+m*Cv*log(T2/T1);//KJ/KgK
disp(S2subS1,"Change in entropy in KJ/KgK : ");

disp("part (b) Polytropically")
T2=T1*(p2/p1)^((n-1)/n);//K
disp(T2,"Temperature T2 in K : ");
V1=R*T1/p1/10^5;//m^3/Kg
V2=(p1/p2)^(1/n)*V1;//m^3/Kg
w= m*R/1000*(T1-T2)/(n-1);;//KJ/Kg
disp(w,"Workdone in KJ/Kg : ");
deltaU=m*Cv*(T2-T1);//KJ(as T1=T2)
q=w+deltaU;//KJ/Kg
disp(q,"Heat transfer in KJ/Kg : ");
S2subS1=m*R/1000*log(V2/V1)+m*Cv*log(T2/T1);//KJ/KgK
disp(S2subS1,"Change in entropy in KJ/KgK : ");
