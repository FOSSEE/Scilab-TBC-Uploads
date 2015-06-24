//Exa 2.26
clc;
clear;
close;
format('v',7);

//Given Data : 
V1=5;//m^3
p1=2;//bar
t1=27;//degree centigrade
T1=t1+273;//kelvin
p2=6;//bar
p3=p1;//bar
R=287;//KJ/KgK
n=1.3;

//p*V^(1/3)=C
V2=V1*(p1/p2)^(1/1.3);//m^3
//p*V=m*R*T1
m=p1*10^5*V1/R/T1;//Kg
W1_2=10^5*(p1*V1-p2*V2)/(n-1);//Nm
W1_2=W1_2/1000;//KJ
Gamma=1.4;//for air
//p*V^Gamma=C
V3=(p2/p3)^(1/Gamma)*V2;//m^3
W2_3=10^5*(p2*V2-p3*V3)/(Gamma-1);//Nm
W2_3=W2_3/1000;//KJ
W=W1_2+W2_3;//KJ
disp(W,"Net work done in KJ : ");
