Asys=4200//area of system
Acell=12//area of cell
N=1001
K=7
Acl=K*Acell//area of cluster
M=Asys/Acl//no. of clusters
disp(M,'no. of clusters')
J=N/K//cell capacity
disp(J,'cell capacity in channels/cell')
C=N*M//system capacity
disp(C,'the system capacity in no. of channels')
k=4
acl=k*Acell
m=Asys/acl
m1=floor(m)
disp(m1,'no. of clusters for reduced cluster size')
c=N*m1
disp(c,'new system capacity for reduced cluster size in no. of channels')
