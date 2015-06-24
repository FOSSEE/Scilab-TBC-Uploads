//syslin//
exec parallel.sce;
syms G1 G2 G3 H;
a=series(G1,G2);
b=parallel(a,G3);
y=b/.H  //negative feedback operation
y=simple(y)
disp(y,"C(s)/R(s)=")
