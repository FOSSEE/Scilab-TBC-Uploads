//Example No. 5.39
clc;
clear;
close;
format('v',9);

//Given Data : 
P=2.2;//KW
V=220;//V
N1=1000;//rpm
Ra=2;//ohm
f=250;//Hz
alfa=0.9;//duty cycle
N2=1200;//rpm
N3=800;//rpm
Ia1=P*1000/V;//A
Ia2=Ia1*N2/N1;//A
Eb1=alfa*V-Ia2*Ra;//V
Eb2=Eb1*N3/N2;//V
Ia3=Ia1*N3/N1;//A
alfa3=(Eb2+Ia3*Ra)/V;//cycle
ton=alfa3/f;//sec
disp(ton*1000,'On time of chopper in milli seconds : ' );
