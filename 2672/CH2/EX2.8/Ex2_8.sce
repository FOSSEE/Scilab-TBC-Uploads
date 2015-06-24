//Ex_2_8
clc;
clear;
close;
format('v',6);
//given data : 
D=0.5;//m(mean diameter)
A=0.01;//m^2
fi=10/1000;//Wb
N=100;//turns
mmf1=10;//A-turn//(for Ni alloy)
mmf2=50;//A-turn//(for Si-steel alloy)
l=%pi*D;//m(total length)
lni=l/2;//m(length of Ni alloy)
lsi=l/2;//m(length of Si-steel)
mmf=mmf1*lni+mmf2*lsi;//A-turn///total mmf
disp(mmf,"mmf required(A-turn)");
I=mmf/N;//A
disp(I,"Current(A)");
