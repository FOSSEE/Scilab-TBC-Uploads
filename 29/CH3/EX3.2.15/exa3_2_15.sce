//Caption:transfer_function
// example 3.2.15
//page 52
// we have defined parallel and series function which we are going to use here
//exec parallel.sce;
//exec series.sce;
syms G1 G2 H1 H2 H3 D1 D2 R;
a=G2/.H2
b=a/(1+a*H3);
b=simple(b)
//inorder to determine C(s)/R(s) consider D1=0,D2=0
c=series(b,G1)
y=c/(1+c*H1);
y=simple(y)
disp(y,"C(s)/R(s)");
// now consider R=0,D2=0 for calculating C(s)/D1(s)
d=series(G1,H1);
z=b/(1+b*d);
z=simple(z)
disp(z,"D1(s)/R(s)");
// now consider R=0,D1=0 for calculating C(s)/D2(s)
e=G1*(-H1);
f=series(b,e);
x=f/(1+f);
x=simple(x);
disp(x,"D2(s)/R(s)");
out=(y*R)+(z*D1)+(x*D2);
out=simple(out);
disp(out,"C(s)");