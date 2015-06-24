
//example 3.6
//page 130
clc; funcprot(0);
// Initialization of Variable
pi=3.14;
rho=1000;
m=25;
Al=pi*9^2/4;//area left
Ar=pi*2.5^2/4;//area right
//part1
AA=Al-(Al-Ar)/4;
V=m*10^4/rho/AA;
disp(V,"velocity at the section AA(m/s)");
//part2
X=0.1;
k=367/(63.62-1.468*X)^2;//k=dV/dX
Acx=V*k;
disp(Acx,"convective acceleration(m/s^2)");
clear
