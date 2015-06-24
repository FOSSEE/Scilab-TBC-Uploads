//syslin//
exec parallel.sce;
exec series.sce;
syms G1 G2 G3 G4 G5 G6 H1 H2;
a=parallel(G3,G5);
b=parallel(a,-G4);
c=series(G1,G2);
d=c/.H1;
e=series(b,d);
f=e/.H2;
y=series(f,G6);
y=simple(y); 
disp(y,"C(s)/R(s)=")


  
