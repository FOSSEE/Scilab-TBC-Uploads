clear;
clc;
printf("\t\t\tExample Number 3.6\n\n\n");
// Gauss-Seidal calculation
// Example 3.6 (page no.-97-98)
// solution

// it is useful to think in terms of a resistance formulation for this problem because all the connecting resistances between the nodes in figure 3-6(page no.-83) are equal; that is 
// R = dy/(k*dy) = dx/(k*dy) = 1/k                       (a)
// therefore, when we apply equation(3-32) to each node, we obtain(qi = 0)
// Ti = (sum Kj*Tj)/(sum Kj)                           (b)
// because each node has four resistances connected to it and k is assumed constant,
// sum Kj = 4*k
// and
// Ti = (1/4)*(sum Tj)                               (c)
// we are now making four nadal equations for iteration
// node 1 : T1 = (1/4)*(100+500+T2+T3)
// node 2 : T2 = (1/4)*(500+100+T1+T4)
// node 3 : T3 = (1/4)*(100+100+T1+T4)
// node 3 : T4 = (1/4)*(T3+T2+100+100)
// we now set up an iteration table as shown in output
A=[4 -1 -1 0;-1 4 0 -1;-1 0 4 -1;0 -1 -1 4];
b=[600;600;200;200];
x=[300;300;200;200];
NumIters=6;
D=diag(A);
A=A-diag(D);
for i=1:4
    D(i)=1/D(i);
end
n=length(x);
x=x(:); 
y=zeros(n,NumIters);
for j=1:NumIters
    for k=1:n
        x(k)=(b(k)-A(k,:)*x)*D(k);
    end
    y(:,j)=x;
end
printf("the iteration table is shown as : \n\n");
disp(y);
printf("\n\n after five iterations the solution converges and the final temperatures are \n");
disp(y(1,6),"T1=");
disp(y(2,6),"T2=");
disp(y(3,6),"T3=");
disp(y(4,6),"T4=");

