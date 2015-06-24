 //Exa 8.7
clc;
clear;
close;
//given data
format('v',9);
l=10;//in Km
C=0.3;//in uF
V=22;//in KV
VP=V/sqrt(3);//in KV
VP=VP*1000;//in Volt
f=50;//in Hz
Capacitance=C*l;//in uF
CN=2*Capacitance;//in uF
KVA_Taken=3*VP*2*%pi*f*VP*CN*10/1000;//in KVA
disp(KVA_Taken,"KVA taken by the 10 Km cable(KVA) : ");