//syslin//
exec parallel.sce;
exec series.sce;
syms G1 G2 G3 H1 H2;
//shift the take-off point after the block G2
a=G3/G2;
b=parallel(a,1);
c=series(G1,G2);
d=c/.H1  //negative feedback operation
e=series(d,b);
y=e/.H2;
y=simple(y);
disp(y,"C(s)/R(s)=")

