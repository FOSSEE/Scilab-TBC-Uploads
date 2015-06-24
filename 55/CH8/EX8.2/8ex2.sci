disp('to find:minimal spanning tree')
disp('the adjacency matrix for the weighted graph(nodeA,nodeB...nodeF) of 6 nodes is :')
K=[0 0 7 0 4 7;0 0 8 3 7 5;7 8 0 0 6 0;0 3 0 0 0 4;4 7 6 0 0 0;7 5 0 4 0 0]
disp('edges of the graph')
AC=7;  
AE=4;
AF=7;
BC=8;
BD=3;
BE=7;
BF=5;
CE=6;
DF=4;
M=[AC,AE,AF,BC,BD,BE,BF,CE,DF];  //set of all edges
V=int32(M);
L=gsort(V) //edges sorted in decreasing order of their weights
disp('deleting edges without disconnecting the graph until 5 edges remain')
N=[BE,CE,AE,DF,BD];  //edges in minimum spanning tree
Sum=sum(N);
disp(Sum,'weight of the minimal spanning tree is')


disp('another method of finding a minimal spanning tree is :')
K=gsort(V,'g','i')   //edges sorted in increasing order
N2=[BD,AE,DF,CE,AF];  //edges in minimum spanning tree
Sum2=sum(N2);
disp(Sum2,'weight of the minimal spanning tree is')