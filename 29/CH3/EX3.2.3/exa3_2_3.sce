//Caption:transfer_function
// example 3.2.3
//page 35
// we have defined parallel and series function which we are going to use here
//exec parallel.sce;
//exec series.sce;
syms G1 G2 G3 G4 G5 G6 H1 H2;
//shift the takeof point placed before G2 towards right side of block G2
a= G5/G2;
b=parallel(G3,G4);
c=series(b,G6);
d=parallel(a,c);
e=series(G1,G2);
l=series(H1,d);
g=e/.H2
y=g/(1+g*l)
y=simple (y);
disp(y,"C(s)/R(s)=")