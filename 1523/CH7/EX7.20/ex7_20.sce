//Graph Theory : example 7.20 :(pg 7.35 & 7.36)
printf("\nf-cutset1={1,4,5,6} \nf-cutset2={2,4,5} \nf-cutset3={3,4,6}");
Q=[1 0 0 -1 -1 1;0 1 0 -1 -1 0;0 0 1 -1 0 1];
printf("\nQ=");
disp(Q);
printf("\nThe KCL equation in matrix form is given by");
printf("\nQ.Yb.(Q^T).Vl=Q.Is-Q.Yb.Vs");
printf("\nQ.Yb.(Q^T).Vl=Q.Is");//Is=0
Yb=diag([0.2,0.2,0.2,0.1,0.5,0.1]);
Vs=[910;0;0;0;0;0];
Is=[0;0;0;0;0;0];
printf("\nYb=");
disp(Yb);
printf("\nVs=");
disp(Vs);
printf("\nIs=");
disp(Is);
x=(Q*Yb);
printf("\nQ.Yb=");
disp(x);
y=(x*Q');
printf("\nQ.Yb.(Q^T)=");
disp(y);
z=(x*Vs);
printf("\nQ.Yb.Vs=");
disp(z);
printf("\nQ.Is=");
u=(Q*Is);
disp(Q*Is);
v=(u-z);
printf("\nQ.Is-Q.Yb.Vs=");
disp(v);
printf("\nLoad voltages:");
M=[0.9 0.6 0.2;0.6 0.8 0.1;0.2 0.1 0.3];
P=inv(M);
N=[-182;0;0];
X=(P*N);
disp(X);
printf("\nvl1=-460 V \nvl2=320 V \nvl3=200 V");








