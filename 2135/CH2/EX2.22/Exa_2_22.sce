//Exa 2.22
clc;
clear;
close;
format('v',7);

//Given Data : 
p1=1;//bar
V1=0.14;//m^3
V2=0.07;//m^3
R=287;//KJ/KgK

//p*V=R*k1*V^(-2/5) or p*V^(7/5)=K
K=p1*10^5*V1^(7/5);//Nm/Kg
W=integrate('K*V^(-7/5)','V',V1,V2);//Nm
disp(W,"Work done in Nm : ");
p2=K*V2^(-7/5);//N/m^2
p2=p2/10^5;//bar
disp(p2,"Final pressure in bar : ");
//Ans in the book is wrong.
