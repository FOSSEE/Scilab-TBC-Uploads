//Exa 2.21
clc;
clear;
close;
format('v',7);

//Given Data : 
V1=0.5;//m^3
p1=1.5;//bar
T1=100+273;//kelvin
V2=0.125;//m^3
p2=9;//bar
R=287;//KJ/KgK

m=p1*10^5*V1/R/T1;//Kg
disp(m,"Mass of air in Kg : ");
//p1*V1^n=p2*V2^n
n=log(p2/p1)/log(V1/V2);//
disp(n,"Value of index : ");
W=(p1*V1-p2*V2)*10^5/(n-1);//Nm
disp(W/1000,"Work done in KJ : ");
    
