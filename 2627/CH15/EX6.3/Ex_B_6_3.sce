//Ex 6.3
clc;clear;close;
format('v',6);
Asys=1520;//km^2
Ch=1140;//no. of channels
Acell=4;//km^2
i=3;j=2;//For hexagon cells
N=i^2+i*j+j^2;//cells in a cluster
disp(N,"(a) No. of cells in a cluster");
Acluster=N*Acell;//km^2
cluster=Asys/Acluster;//no. of clusters
disp(cluster,"(b) Number of clusters");
disp(Acluster,"(c) Area of each cellular cluster(km^2)");
C=cluster*Ch;//system capacity
disp(C,"(d) Increased system capacity(No. of channels)");
//Without frequency reuse :-
c_sys=Asys/Acell;//No. of cell in a system
ch_cell=Ch/c_sys;//No. of channels/cell
disp(ch_cell,"(e_i) Without frequency reuse, No. of channels/cell");
//With frequency reuse :-
ch_cell=Ch/N;//No. of channels/cell
disp(ch_cell,"(e_ii) With frequency reuse, No. of channels/cell");
