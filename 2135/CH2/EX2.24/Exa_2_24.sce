//Exa 2.24
clc;
clear;
close;
format('v',7);

//Given Data : 
m=1.5;//Kg
V1=0.06;//m^3
p1=5.6*10;//Kpa
t2=240;//degree centigrade
T2=t2+273;//kelvin
a=0.946;
b=0.662;
K=10^-4;

//p*V=m*R*T=m*(a-b)*T
T1=p1*10^5*V1/m/(a-b)/1000;//Kelvin
U2subU1=integrate('m*(b+K*T)','T',T1,T2);//KJ
Q=0;//isentropic process
W=Q-U2subU1;//KJ
disp(W,"Work done in KJ : ");
//Answer in the book is wrong.
