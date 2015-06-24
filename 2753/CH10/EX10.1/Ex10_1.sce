//Example 10.1: 
clc;
clear;
close;
//given data :
Vbb=20;// in V
eta=0.6;// instrinsic stand off ratio 
Vb=0.7;// in V
sov=eta*Vbb;// Stand off voltage
format('v',4)
disp(sov,"(i). Stand off voltage,(V) = ")
Vp=(eta*Vbb)+Vb;
format('v',6)
disp(Vp,"(ii). Peak point voltage,Vp(V) = ")
