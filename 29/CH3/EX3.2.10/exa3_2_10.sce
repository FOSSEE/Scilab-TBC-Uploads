//Caption:transfer_function
// example 3.2.10
//page 43
// we have defined parallel and series function which we are going to use here
//exec parallel.sce;
//exec series.sce;
syms G1 G2 G3 G4 G5 H1 H2 H3;
a=parallel(G3,G4);
//shift off the take off point before block 'a' to after block 'a'
b=1/a;
d=1;
c=G2/(1+G2*d);
e=parallel(H1,b);
f=series(c,a);
g=series(H2,e);
h=f/(1+f*g);
h=simple(h);
i=series(h,G1);
y=i/(1+i*H3);
y=simple(y);
disp(y,"C(s)/R(s)=")