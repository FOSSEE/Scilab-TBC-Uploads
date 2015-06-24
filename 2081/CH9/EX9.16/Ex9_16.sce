Bt=12.5*10^6
Bc=200*10^3
Ns=8
N=Bt/Bc
Ns=8
Nu=N*Ns
K=4//frequency reuse factor
SysC=Nu/K//system capacity
M=(Bt/Bc)*Ns*(1/K)//system capacity using alternate method
disp(SysC,'System capacity per cell in (users/cell)')
disp(M,'System capacity per cell,M,in (users/cell) using alternate method')
