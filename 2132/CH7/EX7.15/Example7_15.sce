////Example 7.15
clc;
clear;
close;
format('v',6);
//Given data :
g=9.81;//gravity constant
D1=50/1000;//meter
D2=100/1000;//meter
l1=100;l2=100;//meter
hf1=10;//meter(level difference)
f=0.008;//coeff. of friction
Q2BYQ1=sqrt((l1/l2)*(D2/D1)^5);//as hf1=hf2
Q1=sqrt(hf1/f/l1*(3.0257*D1^5));//m^3/sec
Q2=Q2BYQ1*Q1;//m^3/sec or cumec
disp(Q1,"Rate of flow of pipe 1(m^3/sec)");
disp(Q2,"Rate of flow of pipe 2(m^3/sec)");
Q=Q1+Q2;//m^3/sec(Total Discharge)
d=(f*l1*Q^2/3.0257/hf1)^(1/5);//meter
disp(d*1000,"Diameter of single pipe(mm) : ");
//Answer in the book is not accurate.
