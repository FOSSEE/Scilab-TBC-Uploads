//Caption:transfer_function
// example 3.2.2
//page 34
// we have defined parallel and series function which we are going to use here
//exec parallel.sce;
//exec series.sce;
syms G1 G2 G3 H1;
// shifting take off point before block G1 to a position after block G1
a=G1*H1;
b=parallel(G1,G2);
c=G3/.a
y=series(b,c);
y=simple (y);
disp(y,"C(s)/R(s)=")