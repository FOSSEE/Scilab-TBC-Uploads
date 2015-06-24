Bt=12.5*10^6
Bc=30*10^3
K=7//frequency reuse factor
N=Bt/Bc//total no. of available channels
M=N*(1/K)//user capacity per cell 

Nu=3//no. of users/channel
NU=N*Nu
K1=4
M1=NU*(1/K1)

disp(M,'capacity of 1G AMPS FDMA analog cellular system in users/cell')
disp(M1,'capacity of 2G IS-136 TDMA digital cellular system in users/cell')
