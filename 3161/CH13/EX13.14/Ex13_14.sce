clc;
//page 701
//problem 13.14

//Given, Tw = 10microsec, BCH(1023973) code is used implies k as 973 & n as 1023, P_A = 0.99, T1 = 40microsec & N = 4
Tw = 10*10^-6
k = 973
n = 1023
P_A = 0.99
T1 = 40*10^-6
N = 4

//efficiency of Stop-and-Wait ARQ(n_SandW) = (k/n)*(P_A/(1+(T1/Tw)))
n_SandW = (k/n)*(P_A/(1+(T1/Tw)))

//efficiency of Go-Back-N ARQ(n_GBN) = (k/n)*(1/(1+(N*(1-P_A)/P_A)))
n_GBN = (k/n)*(1/(1+(N*(1-P_A)/P_A)))

//efficiency of Selective Repeat ARQ(n_SR) = (k/n)*P_A
n_SR = (k/n)*P_A

disp('efficiency of Stop-and-Wait ARQ is '+string(n_SandW))
disp('efficiency of Go-Back-N ARQ is '+string(n_GBN))
disp('efficiency of Selective Repeat ARQ is '+string(n_SR))
