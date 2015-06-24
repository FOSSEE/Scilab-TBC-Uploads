//syslin//
exec series.sce;
exec parallel.sce;
syms G1 G2 G3 G4 H1 H2 ;
//reduce the internal feedback loop
a=G2/.H2;
//place the summer left to the block G1
b=G3/G1;
//exchange the summer
c=parallel(b,1);
d=series(a,G1);
e=series(d,G4);
f=e/.H1;
y=series(c,f);
y=simple(y);
disp(y,"C(s)/R(s)=")

