//Ex 2.9.8
clc;clear;close;
format('v',8);

//Given : 
Vs=10;//V
disp("Case(i) : Vb=9.8V");
Vb=9.8;//V
//D1 forward & D2 reverse biased: Breakdown D2
VD2=Vb;//V
VD1=Vs-Vb;//V
disp(VD1,"VD1(V) : ");
disp(VD2,"VD2(V) : ");
disp("Case(ii) : Vb=10.2V");
Vb=10.2;//V
//D1 forward & D2 reverse biased: none will be breakdown
VD2=Vb;//V
//I=I0 so exp(V1/Eta/VT)-1=1
Eta=1;//constant
VT=26/1000;//V
VD1=log(1+1)*Eta*VT;//V
VD2=Vs-VD1;//V
disp(VD1,"VD1(V) : ");
disp(VD2,"VD2(V) : ");
