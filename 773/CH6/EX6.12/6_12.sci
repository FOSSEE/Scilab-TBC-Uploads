//syslin//
exec series.sce;
exec parallel.sce;
syms G1 G2 G3 G4 H1 H2 H3;
//shift the take-off point after the block G1
a=G3/G1; 
b=parallel(a,G2);
c=G1/.H1; // Negative Feedback Operation
d=1/b;   // Negative Feedback Operation
e=parallel(d,H3);
f=series(e,H2);
g=series(c,b);
h=g/.f ;   // Negative Feedback Operation
y=series(h,G4);
y=simple(y);
disp(y,"C(s)/R(s)=")
