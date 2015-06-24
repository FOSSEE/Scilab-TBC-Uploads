//Ex_2_5
clc;
clear;
close;
format('v',6);
//given data : 
I1=5;//A
N1=500;//turns
fi1=1;//mWb
dt=10;//ms
e2=50;//V
K=60/100;//coefficient of coupling
di1=2*(I1);//A(as current changes from +5A to -5A)
M=e2*dt*10^-3/di1;//H
L1=N1*fi1/1000/I1;//H
L2=L1*M^2/K^2;//H
disp(M,"Mutual Inductance of two coil(H)");
disp(L1,"Self inductance of coil 1(H)");
disp(L2,"Self inductance of coil 2(H)");
//Answer is wrong in the book.
