//Caption:transfer_function
// example 3.2.14
//page 50
// we have defined parallel and series function which we are going to use here
//exec parallel.sce;
//exec series.sce;
syms G1 G2 G3 G4 H1 H2 R D;
a=parallel(G1,G2)
b=G3/.H2
c=series(a,b)
//inorder to determine C(s)/R(s) consider D=0
d=series(c,G4);
y=d/(1+d*H1);
y=simple (y);
disp(y,"C(s)/R(s)=")
// now consider R=0 for calculating C(s)/D(s)
e=series(c,H1)
z=G4/(1+G4*e);
z=simple(z);
disp(z,"C(s)/D(s)=");
x=(y*R)+(z*D);
x=simple(x);
printf("total output");
disp(x,"C(s)")