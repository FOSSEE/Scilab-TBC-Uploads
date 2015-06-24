//Caption:transfer_function
// example 3.2.4
//page 36
// we have defined parallel and series function which we are going to use here
//exec parallel.sce;
//exec series.sce;
syms G1 G2 G3 H1 H2;
//shift the take off point placed before G1 to after block G1
a=G3/G1;
b=parallel(a,G2);
//shift the take off point before block b towards right side of same block
c=1/b;
d=series(H1,c);
e=series(G1,b);
g=parallel(H2,d);
y=e/(1+e*g);
y=simple (y);
disp(y,"C(s)/R(s)=")