//Example No. 5.31
clc;
clear;
close;
format('v',9);

//Given Data : 
V=220;//V
P=2.2;//KW
N1=1000;//rpm
Ra=2;//ohm
f=250;//Hz
alfa=0.9;//cycle
N2=1200;//rpm
N3=800;//rpm
Ia1=P*1000/V;//A
Ia2=Ia1*N2/N1;//A
Eb2=alfa*V-Ia2*Ra;//V
Eb3=Eb2*N3/N2;//V
Ia3=Ia1*N3/N1;//A
alfa3=(Eb3+Ia3*Ra)/V;//cycle
ton=alfa3/f;//sec
disp(ton,'On time of chopper in sec : ' );
