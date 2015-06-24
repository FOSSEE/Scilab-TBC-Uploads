//Exa 10.14
clc;
clear;
close;
//Given data :
S1=25;//m
S2=75;//m
Point_P=45;//m
L1=250;//m
L2=125;//m(mid point)
w=0.7;//kg/m
h1=S2-S1;//m(for points A & B)
h2=Point_P-S1;//m(for points A & B)
//h1=w*L1/2/T*[L1-2*x]
//h2=w*L2/2/T*[L2-2*x]
x=(L1-h1/h2/L1*L2*L2)/(-h1/h2/L1*L2*2+2);//m
T=(L1-2*x)/(h1/w/L1*2);//kg
disp(T,"Stringing Tension(kg)");
