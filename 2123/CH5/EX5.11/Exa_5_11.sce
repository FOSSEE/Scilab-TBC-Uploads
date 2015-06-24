//Example No. 5.11
clc;
clear;
close;
format('v',5);

//Given Data : 
V=250;//V
Ra=1;//ohm
Ia1=25;//A
N1=900;//rpm
If=2;//A
N2=1100;//rpm
Eb1=V-Ia1*Ra;//V
//If1*Ia1=If2*Ia2
//Eb2=V-Ia2*Ra;//V
//-Ia2^2*Ra+Ia2*V-Eb1*Ia1*N2/N1=0;
polynomial=[-Ra V -Eb1*Ia1*N2/N1];
Ia2=roots(polynomial);//A
Ia2=Ia2(2);//A(wide range not allowed)
If2=Ia1/Ia2*If;//A
disp(If2,"New value of field current in A : ");
