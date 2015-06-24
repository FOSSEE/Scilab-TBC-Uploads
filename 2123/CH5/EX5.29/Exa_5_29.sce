//Example No. 5.29
clc;
clear;
close;
format('v',9);

//Given Data : 
V=220;//V
Vin=230;//V
N1=1500;//rpm
Ia1=10;//A
Ra=3;//ohm
N2=600;//rpm
E1=V-Ia1*Ra;//V
E2=E1*N2/N1;//V
Ia2=Ia1/2;//A(because of Tnew=T/2)
Vapp=E2+Ia2*Ra;//V
alfa=acosd(Vapp*%pi/2/sqrt(2)/Vin);//degree
disp(alfa,"Firing angle of converter in degree : ");
