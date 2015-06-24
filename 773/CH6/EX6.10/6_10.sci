//syslin//
exec parallel.sce;
exec series.sce;
syms G1 G2 G3 G4 G5 H1 H2;
a=G2/.H1;  //negative feedback operation
b=series(G1,a);
c=series(b,G3);
d=parallel(c,G4);
e=series(d,G5);
y=e/.H2;   //negative feedback operation
y=simple(y);
disp(y,"C(s)/R(s)=")
