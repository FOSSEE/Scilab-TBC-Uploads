// Example 5.8: mobility 
clc, clear
// given :
format('v',6)
d=10.5; // density of silver in gm/c.c
w=107.9; // atomic weight
b=6.8*10^5; // conductivity in mhos/cm
e=1.602*10^-19; // in C
N=6.023*10^23;
n=(N*d)/w;
mu=b/(e*n);
disp(mu,"mobility of electron,mu(m^2/volt-sec) = ")
