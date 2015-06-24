//Caption:transfer_function
// example 3.2.8
//page 41
// we have defined parallel and series function which we are going to use here
//exec parallel.sce;
//exec series.sce;
syms G1 G2 G3 G4 G5 H1 H2;
//shift the summing point before block G5 towards left of block G5
a=G2*G5;
b=G4/.H1;
c=series(G5,H2);
d=series(b,G3);
e=d/(1+d*c);
e=simple(e)
f=parallel(G1,a);
y=series(f,e);
y=simple (y);
disp(y,"C(s)/R(s)=");