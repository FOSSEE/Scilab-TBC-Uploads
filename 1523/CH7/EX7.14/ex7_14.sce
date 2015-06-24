//Graph Theory : example 7.14 :(pg 7.37 & 7.38)
//Tieset Matrix B
printf("\ntieset1={1,4,5} \ntieset2={2,4,6} \ntieset={3,5,6} \nB="); 
B=[1 0 0 1 1 0;0 1 0 -1 0 -1;0 0 1 0 -1 1];
disp(B);
printf("\nThe KVL equation in matrix form \nB.Zb.(B^T).Il = B.Vs-B.Zb.Is");
printf("\nB.Zb.(B^T).Il = B.Vs \nZb=");//Is=0
Zb=diag([1,1,1,2,2,2]);
disp(Zb);
printf("\n(B^T)=");
disp(B');
Vs=[2;0;0;0;0;0];
printf("\nVs=");
disp(Vs);
printf("\nB.Zb=");
x=(B*Zb);
disp(x);
printf("\nB.Zb.(B^T)=");
y=(x*B');
disp(y);
printf("\nB.Vs=");
z=(B*Vs);
disp(z);
printf("\nLoad currents:");
M=[5 -2 -2;-2 5 -2;-2 -2 5];
H=inv(M);
N=[2;0;0];
X=H*N;
disp(X);
printf("\nIl1=0.857 A \nIl2=0.571 A \nIl3=0.571 A");
printf("\nBranch currents:");
P=(B')*X;
disp(P);//Currents in amperes

