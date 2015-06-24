//Caption:transfer_function
// example 3.2.5
//page 37
// we have defined parallel and series function which we are going to use here
//exec parallel.sce;
//exec series.sce;
syms G1 G2 G3 H1 H2 H3;
//shift the take off point placed before G3 to after block G3
a=H3/G3;
b=G3/.H2;
c=series(G2,b);
//shift the summing point after block G1 to before block G1
d=a/G1;
e=G1/.H1;
f=series(e,c);
y=f/(1+f*d);
y=simple (y);
disp(y,"C(s)/R(s)=")