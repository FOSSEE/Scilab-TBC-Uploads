K=4
Acell=7
Acl=K*Acell//area of cluster
Asys=1765
Nservarea=Asys/Acl//number of clusters 
N=round(Nservarea)
disp(N,'Numer of times the cluster of size 4  has to be replicated')
