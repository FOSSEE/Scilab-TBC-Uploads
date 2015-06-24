//Caption:transfer_function
// example 3.2.1
//page 32
// we have defined parallel and series function which we are going to use here
//exec parallel.sce;
//exec series.sce;
syms G1 G2 G3 H1;
// shifting take off point after block G2 to a position before block G2
a= G2*H1;
b=parallel(G2,G3);
//shifting take off point before (G2+G3) to After (G2+G3)
c=a/b;
m=1;
d=b/(1+m*b);
e=series(G1,d);
y=(e/(1+c*e));
y=simple (y);
disp (y,"C(s)/R(s)=");