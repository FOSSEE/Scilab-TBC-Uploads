//Caption:transfer_function
// example 3.2.6
//page 38
// we have defined parallel and series function which we are going to use here
//exec parallel.sce;
//exec series.sce;
syms G1 G2 G3 H1;
a=parallel(G1,G3);
b=G2/.H1;
y=series(a,b);
y=simple (y);
disp(y,"C(s)/R(s)=");