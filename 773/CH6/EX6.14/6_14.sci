//syslin//
exec series.sce;
exec parallel.sce;
syms G1 G2 G3 G4 H1 H2 ;
//shift the take-off point to the right of the block G3
a=H1/G3;
b=series(G2,G3);
c=parallel(H2,a);
d=b/.c;
e=series(d,G1);
f=e/.a;
y=series(f,G4);
y=simple(y);
disp(y,"C(s)/R(s)=")
