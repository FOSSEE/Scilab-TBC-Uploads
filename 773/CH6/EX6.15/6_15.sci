//syslin//
exec series.sce;
exec parallel.sce;
syms G1 G2 G3 G4 H1 H2 H3;
//shift the take-off point to the right of the block H1
//shift the other take-off point to the right of the block H1 &H2
a=series(H1,H2);
b=1/a;
c=1/H1;
d=G3/.a;
//move the summer to the left of the block G2
e=G4/G2;
f=series(d,G2);
//exchange the summer
g=f/.H1;
h=parallel(G1,e);
i=series(h,g);
j=series(a,H3);
y=i/.j;
y=simple(y);
disp(y,"C(s)/R(s)=")
