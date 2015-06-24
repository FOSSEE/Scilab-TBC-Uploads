//Exa8
clc;
clear;
close;
//given data :
R1=5000;//in Rs
R2=10000;//in Rs
R3=15000;//in Rs
R4=10000;//in Rs
R5=8000;//in Rs
r=10;//in % per annum
i=r/100;
n=5;//in years
//formula Vn=R1*(1+i)^(n-1)+R2*(1+i)^(n-2)+.............+Rn-1*(1+i)+Rn
V5=R1*(1+i)^(n-1)+R2*(1+i)^(n-2)+R3*(1+i)^(n-3)+R4*(1+i)^(n-4)+R5;
disp(V5,"The future value of this series of payments(in Rs) will be : ")
