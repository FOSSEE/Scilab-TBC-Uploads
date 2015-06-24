//Graph Theory : example 7.15 :(pg 7.34 & 7.35)
Q=[1 -1 0 0;0 -1 1 1];
printf("\nQ=");
disp(Q);
printf("\nThe KCL equation in matrix form is given by");
printf("\nQ.Yb.(Q^T).Vl=Q.Is-Q.Yb.Vs");
printf("\nQ.Yb.(Q^T).Vl=Q.Is");//Vs=0
Yb=diag([5,5,5,10]);
Is=[-10;0;0;0];
printf("\nYb=");
disp(Yb);
printf("\n(Q^T)=");
disp(Q');
printf("\nIs=");
disp(Is);//current entering into nodes is taken as negative
x=(Q*Yb);
printf("\nQ.Yb=");
disp(x);
y=(x*Q');
printf("\nQ.Yb.(Q^T)=");
disp(y);
z=(Q*Is);
printf("\nQ.Is=");
disp(z);
printf("\nLoad voltages:");
M=[10 5;5 20];
P=inv(M);
N=[-10;0];
X=(P*N);
disp(X);
printf("\nvl1=-1.14 V \nvl2=0.28 V");
