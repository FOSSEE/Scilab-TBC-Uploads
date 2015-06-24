//Exa 2.17
clc;
clear;
close;
format('v',6);

//Given Data : 
N=250;//rpm
tau=10;//min
Q1=-5;//KJ
deltaU=2;//KJ
p=1.2;//bar
p=p*100;//KJ
E=24;//volt
I=0.45;//Ampere
A=0.1;//m^2
T=0.5;//Nm
Q2=E*I*tau*60/1000;//KJ
Q=Q1+Q2;//KJ
//Consider piston moves through a distance y
//Q-(W1+W2)=deltaU where W1=p*A*y
W2=-T*2*%pi*N*tau;//Nm
W2=W2/1000;//KJ
y=(Q-W2-deltaU)/A/p;//meter
disp(y*100,"Distance in cm : ");
//Ans is wrong in the book.
