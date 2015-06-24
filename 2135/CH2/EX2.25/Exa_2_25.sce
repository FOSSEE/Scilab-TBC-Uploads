//Exa 2.25
clc;
clear;
close;
format('v',7);

//Given Data : 
m=1.5;//Kg
p1=1000;//Kpa
p2=200;//Kpa
V1=0.2;//m^3
V2=1.2;//m^3
//p=a+b*v
//solving for a and b by matrix
A=[1 V1;1 V2];
B=[p1;p2];
X=A^-1*B;
a=X(1);
b=X(2);
W=integrate('a+b*V','V',V1,V2);//KJ/Kg
disp(W,"Work transfer in KJ/Kg : ");
u2SUBu1=(1.5*p2*V2+35)-(1.5*p1*V1+35);//KJ/Kg
disp(u2SUBu1,"Change in internal energy in KJ/Kg : ");
q=W+u2SUBu1;//KJ/Kg
disp(q,"Heat transfer in KJ/Kg : ");
//u=1.5*(a+b*V)*V+35;
//1.5*a+2*V*1.5*b=0;//for max value putting du/dV=0
V=-1.5*a/2/1.5/b;//m^3/Kg
p=a+b*V;//KPa
u_max=1.5*p*V+35;//KJ/Kg
disp(u_max,"Maximum internal energy in KJ/Kg : ");
//Answer in the book is wrong because a is 1160 instead of 1260.
