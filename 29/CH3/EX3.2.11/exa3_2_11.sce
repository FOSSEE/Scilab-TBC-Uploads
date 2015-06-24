//Caption:transfer_function
// example 3.2.11
//page 45
// we have defined parallel and series function which we are going to use here
//exec parallel.sce;
//exec series.sce;
syms G1 G2 G3 G4 H1 H2 H3;
a=G4/.H1;
//shift the summing point after block G3 towards left of block G3
b=G2/G3;
c=series(a,G3);
d=c/(1+c*H2);
d=simple(d)
//shift the summing point before block G1 towards right of block G1
e=G1*H3;
f=d/(1+d*e);
f=simple(f)
g=parallel(G1,b);
g=simple(g);
y=series(g,f)
y=simple (y);
disp(y,"C(s)/R(s)=");