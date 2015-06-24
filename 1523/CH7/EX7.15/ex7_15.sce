//Graph Theory : example 7.15 :(pg 7.38 & 7.39)
//Tieset Matrix B
printf("\ntieset1={1,4,6} \ntieset2={2,5,6} \ntieset={3,5,4} \nB="); 
B=[1 0 0 1 0 1;0 1 0 0 1 -1;0 0 1 -1 -1 0];
disp(B);
printf("\nThe KVL equation in matrix form \nB.Zb.(B^T).Il = B.Vs-B.Zb.Is");
printf("\nB.Zb.(B^T).Il = B.Vs \nZb=");//Is=0
Zb=diag([6,4,3,4,6,2]);
disp(Zb);
printf("\n(B^T)=");
disp(B');
Vs=[12;-6;-8;0;0;0];
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
M=[12 -2 -4;-2 12 -6;-4 -6 12];
H=inv(M);
N=[12;-6;-8];
X=H*N;
disp(X);
printf("\nIl1=0.55 A \nIl2=-0.866 A \nIl3=-0.916 A");
