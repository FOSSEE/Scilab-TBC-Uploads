//Caption:transfer_function
// example 3.2.13
//page 49
// we have defined parallel and series function which we are going to use here
//exec parallel.sce;
//exec series.sce;
syms G1 G2 G3 G4 H1 H2;
//shift the summing point after block H2 towards right of block H2
//shift the summing point after block H1 towards right of block H2
a=H1*H2
b=parallel(G1,G2)
c=G4/.a
d=series(G3,c)
e=d/(1+d*H2);
e=simple(e)
f=series(b,e)
y=f/(1+f*a);
y=simple (y);
disp(y,"C(s)/R(s)=");


