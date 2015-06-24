//Caption:overall_transfer_function
// example 4.4.9
//page 71
// we have defined parallel and series function which we are going to use here
exec parallel.sce;
exec series.sce;
syms G1 G2 G3 G4 H5 H1 H2;
//shift the SUMMING point locsted after G3 towards left of block G3
a=G2/.H1;
b=G5/G3;
c=parallel(a,b);
c=simple(c);
d=G3/.H2;
e=series(G1,c);
f=series(e,d);
y=series(G4,f);
y=simple (y);
disp(y,"C(s)/R(s)=")