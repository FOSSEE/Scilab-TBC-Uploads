//syslin//
exec series.sce;
syms G1 G2 H1 H2 s;
a=G1/.H1; // negative feedback operation
b=a/.H2;// negative feedback operation
y=series(b,G2); 
y=simple(y); 
disp(y,"C(s)/R(s)=")

