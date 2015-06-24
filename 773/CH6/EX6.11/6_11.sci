//syslin//
exec parallel.sce;
exec series.sce;
syms G1 G2 G3 G4 G5 G6 G7 H1 H2 H3;
a=parallel(G1,G2);
b=parallel(a,G3);
//shift the take off point to the right of the block G4
c=G4/.H1;  //negative feedback operation
d=G5/G4;    //negative feedback operation
e=parallel(d,1);
f=G6/.H2;   //negative feedback operation
g=series(b,c);
h=series(g,e);
i=series(h,f);
j=series(i,G7);
y=j/.H3;
y=simple(y);
disp(y,"C(s)/R(s)=")

