//Caption:transfer_function
// example 3.2.12
//page 47
// we have defined parallel and series function which we are going to use here
//exec parallel.sce;
//exec series.sce;
syms G1 G2 G3 G4 H1 H2 H3;
//shift the summing point before block G1 towards right of block G1
//shift the summing point after block G3 towards left of block G3
a=G2/G1
b=H3/G3;
c=G1/.H1
d=G3/.H2
e=series(G4,d)
//shift the summing point after block e towards left of block e
g=1/e
f=series(a,g);
f=simple(f)
h=parallel(f,1);
h=simple(h)
i=e/(1+e*b);
i=simple(i)
j=series(c,h);
y=series(j,i);
y=simple (y);
disp(y,"C(s)/R(s)=");