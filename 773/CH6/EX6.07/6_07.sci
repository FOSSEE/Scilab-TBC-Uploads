//syslin//
exec series.sce;
syms G1 G2 G3 H1 H2 R X;
//putting x=0,then solving the block
a=G3/.H1;
b=series(G1,G2);
c=series(a,b);
x1=c/.H2;
C1=R*x1;
disp(x1,"C1(s)/R(s)=")
//putting r=0 ,then solving the block
d=series(G1,G2);
e=series(d,H2);
f=G3/.H1;
x2=f/.e;
C2=X*x2;
disp(x2,"C2(s)/X(s)=")
//resultant output  C=C1+C2
C=C1+C2;
C=simple(C);
disp(C,"Resultant Output=")

