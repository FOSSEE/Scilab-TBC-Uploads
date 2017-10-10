//Eg No. 1.3
//Pg No. 12
clc ;
clear ;
close ;
deff('v = f(R,T,M)','v = sqrt(8*R*T/(3.14159*M))')
R = 8.314*(10^7)
M = input('Enter the value of M')
T = input ('Enter the value of T')
v = f(R,M,T)
disp('v = ')
disp(v)