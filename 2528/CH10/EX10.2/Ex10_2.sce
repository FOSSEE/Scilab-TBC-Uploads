//chapter 10
//Vout 
//page no.  356
//Example10_2
//Figure 10.7
//Given
clc;
clear;
step=0.1;
t=0:step:10;
disp("Answer is coming interm of t so solution is done by graph");
//x=1;
//f=5000;
x0=-1.6;x1=0:0.1:10;
Vin=sin(t);

xtitle('Sin(x)','t')
X=integrate('sin(t)','t',x0,x1);
Ri=10000;           //in Ohm
C=10^-8;           //in farad
Rf=100000;           //in Ohm
Vout=-0.318*X;
clf;
plot(t,Vin,t,Vout);
xtitle('Input(Blue) / Output(Green)','t','V');
