//Caption:transfer_function
// example 3.2.7
//page 39
// we have defined parallel and series function which we are going to use here
//exec parallel.sce;
//exec series.sce;
syms G1 G2 G3 H1 H2;
//shift the take off point placed before G2 to after block G2
a=G2*H1;
//shift the take off point placed before G2 to after block G1 and shift the summing point before block G2 to before block G2
//interchange consecutive summing point and shift the take off point placed before H2 to after block H2
b=G2*H2;
c=b*H1;
d=parallel(G3,G2);
e=1/.b
f=series(d,e);
g=G1/.a
h=series(g,f);
y=h/(1-h*c);
y=simple (y);
disp(y,"C(s)/R(s)=")