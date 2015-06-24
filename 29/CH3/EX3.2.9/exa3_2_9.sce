//Caption:transfer_function
// example 3.2.9
//page 42
// we have defined parallel and series function which we are going to use here
//exec parallel.sce;
//exec series.sce;
syms G1 G2 G3 G4 G5 H1 H2 H3;
//shift the take off point placed before G3 to after block G3
a=G5/G3;
b=G1/.H1;
c=series(b,G2);
d=G3/.H2;
e=parallel(G4,a);
e=simple(e);
f=series(c,d);
g=series(f,e);
g=simple(g);
y=g/(1+g*H3);
y=simple(y);
disp (y,"C(s)/R(s)=");