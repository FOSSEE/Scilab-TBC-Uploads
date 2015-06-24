//syslin//
exec series.sce
syms G1 G2 G3 H1 H2 H3;
//Remove the feedback loop having feedback path transfer function H2
a=G3/.H2;
//Interchange the summer .as well as replace the cascade block by its equivalent block
b=series(G1,G2);
c=b/.H1; //Negative Feedback Operation
d=series(c,a);
y=d/.H3;  //Negative Feedback Operation
y=simple(y);
disp(y,"C(s)/R(s)=")
